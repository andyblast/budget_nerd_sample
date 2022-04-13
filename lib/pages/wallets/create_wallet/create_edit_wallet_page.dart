import 'package:budget_nerd/core/ui/forms/custom_button.dart';
import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:budget_nerd/core/ui/widgets/app_bar_leading_widget.dart';
import 'package:budget_nerd/core/ui/widgets/text_input_field/text_input_field.dart';
import 'package:budget_nerd/core/utils/icon_mapper.dart';
import 'package:budget_nerd/features/currencies/presentation/bloc/currencies_list_bloc.dart';
import 'package:budget_nerd/features/current_user/presentation/bloc/current_user_bloc.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/create_wallet_use_case.dart';
import 'package:budget_nerd/features/wallets/domain/usecases/update_wallet_use_case.dart';
import 'package:budget_nerd/features/wallets/presentation/bloc/selected_wallet/selected_wallet_bloc.dart';
import 'package:budget_nerd/pages/wallets/create_wallet/widgets/select_currency_field/select_currency_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/injection_container.dart';

part 'create_edit_wallet_page_view.dart';

class CreateEditWalletPage extends StatefulWidget {
  final WalletModel? initWallet;

  CreateEditWalletPage({this.initWallet});

  @override
  _CreateEditWalletPageState createState() => _CreateEditWalletPageState();
}

class _CreateEditWalletPageState extends State<CreateEditWalletPage> {
  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();

  String? _walletName;
  double? _walletBudget;
  CurrencyModel? _selectedCurrency;

  bool _isEmptyName = false;

  void _init() async {
    await Future.delayed(Duration(milliseconds: 200));
    _focusNode.requestFocus();
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  void handleNameInput(String value) {
    setState(() => _walletName = value);
  }

  void handleBudgetInput(String value) {
    setState(() => value != ''
        ? _walletBudget = double.parse(value)
        : _walletBudget = 0.0);
  }

  void handleCancelButton(BuildContext context) {
    Navigator.pop(context);
  }

  void handleDoneButton(
    BuildContext context,
    CurrencyModel selectedCurrency,
  ) {
    _formKey.currentState?.save();

    if (_walletName!.isNotEmpty) {
      setState(() => _isEmptyName = false);
      (widget.initWallet == null)
          ? _handleCreateWallet(context, selectedCurrency)
          : _handleSaveWallet();
    } else {
      setState(() => _isEmptyName = true);
    }
  }

  void handleCurrencySelect(CurrencyModel newCurrency) {
    setState(() => _selectedCurrency = newCurrency);
  }

  void _handleCreateWallet(
    BuildContext context,
    CurrencyModel selectedCurrency,
  ) async {
    final newWallet = WalletModel(
      createdAt: DateTime.now(),
      name: _walletName!,
      currencyCode: selectedCurrency.code,
      currencySymbolNative: selectedCurrency.symbolNative,
      balance: _walletBudget,
    );

    final eitherWalletIdOrFailure = await sl<CreateWalletUseCase>()(
        CreateWalletUseCaseParams(wallet: newWallet));
    eitherWalletIdOrFailure.fold((_) {}, (int walletId) {
      sl<SelectedWalletBloc>().add(
        UpdateSelectedWalletEvent(newWallet.copyWith(id: walletId)),
      );
    });

    Navigator.pop(context, true);
  }

  void _handleSaveWallet() async {
    final copiedWallet = widget.initWallet!.copyWith(
      name: _walletName,
    );
    await sl<UpdateWalletUseCase>()(
        UpdateWalletUseCaseParams(wallet: copiedWallet));

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrentUserBloc>(
          create: (BuildContext context) =>
              sl<CurrentUserBloc>()..add(WatchCurrentUserEvent()),
        ),
        BlocProvider<CurrenciesListBloc>(
          create: (BuildContext context) =>
              sl<CurrenciesListBloc>()..add(ReadCurrenciesListEvent()),
        ),
      ],
      child: _CreateEditWalletPageView(this),
    );
  }
}

class CreateEditWalletPageArgs {
  final WalletModel? initWallet;

  CreateEditWalletPageArgs({this.initWallet});
}
