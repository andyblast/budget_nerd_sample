import 'package:budget_nerd/core/error/index.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

abstract class GoogleDataSource {
  Future<String> googleSignIn();
}

class GoogleDataSourceImpl implements GoogleDataSource {
  @override
  Future<String> googleSignIn() async {
    var googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
      ],
    );

    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.disconnect();
    }
    try {
      await googleSignIn.signIn();

      final auth = await googleSignIn.currentUser!.authentication;
      final idToken = auth.idToken!;

      return idToken;
    } catch (e, stackTrace) {
      await Sentry.captureException(GoogleSignInException(e.toString()),
          stackTrace: stackTrace);
      throw GoogleSignInException();
    }
  }
}
