import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/core/utils/futures.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/features/exchangerates/domain/index.dart';
import 'package:budget_nerd/navigator_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:theme_provider/theme_provider.dart';
import 'injection_container.dart' as di;

void main() async {
  if (kReleaseMode) {
    runReleaseMain();
  } else {
    runDebugMain();
  }
}

void runDebugMain() async {
  await dotenv.load(fileName: 'assets/.env');
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  unawaited(SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]));

  runApp(MyApp());
}

void runReleaseMain() async {
  await dotenv.load(fileName: 'assets/.env');
  await SentryFlutter.init((options) {
    options.dsn = dotenv.env['SENTRY_URL'];
  }, appRunner: () async {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();

    unawaited(SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]));

    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late AppLifecycleState appLifecycleState;
  late String themeId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (AppLifecycleState.resumed == state) {
      di.sl<RemoteSyncExchangeRatesUseCase>()(NoParams());
      di.sl<GetLocalExchangeRatesUseCase>()(NoParams());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Provider<MyDatabase>(
      create: (_) => di.sl<MyDatabase>(),
      child: ThemeProvider(
        saveThemesOnChange: true,
        themes: [
          DarkAppTheme().appTheme,
          LightAppTheme().appTheme,
        ],
        onInitCallback: (controller, previouslySavedThemeFuture) async {
          final savedTheme = await previouslySavedThemeFuture;
          if (savedTheme != null) {
            controller.setTheme(savedTheme);
          }
        },
        child: ThemeConsumer(
          child: Builder(
            builder: (BuildContext context) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeProvider.themeOf(context).data,
              title: 'Budget Nerd',
              initialRoute: '/',
              onGenerateRoute: (RouteSettings settings) =>
                  NavigatorRouter(context: context, settings: settings)
                      .onGenerateRoutes(),
            ),
          ),
        ),
      ),
    );
  }
}
