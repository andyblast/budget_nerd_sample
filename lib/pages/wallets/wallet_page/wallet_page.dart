import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/pages/wallets/wallet_page/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/usecases/usecase.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/current_user/domain/index.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';

import 'package:budget_nerd/injection_container.dart';

part 'wallet_page_view.dart';

class WalletPage extends StatefulWidget {
  final List<WalletModel>? walletsList;
  final WalletModel? selectedWallet;
  final bool isAllWalletsSelected;
  final ExchangeRateModel? exchangerates;
  final UserModel currentUser;
  final CurrencyModel? selectedWalletCurrency;
  final CurrencyModel? homeCurrency;
  final List<TransactionModel> transactions;

  WalletPage({
    Key? key,
    this.walletsList,
    this.selectedWallet,
    required this.currentUser,
    this.exchangerates,
    this.selectedWalletCurrency,
    this.homeCurrency,
    required this.transactions,
    required this.isAllWalletsSelected,
  }) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  late OverlayEntry _overlayEntry;

  void handleTapWalletsDropdown(BuildContext context) {
    _overlayEntry = OverlayEntry(builder: (BuildContext overlayContext) {
      return WalletsDropDown(
        walletsList: widget.walletsList,
        selectedWallet: widget.selectedWallet,
        onCloseOverlay: () {
          _overlayEntry.remove();
        },
        onWalletSelect: (int index) {
          _handleSelectWallet(index);
        },
      );
    });
    Overlay.of(context)?.insert(_overlayEntry);
  }

  void _handleSelectWallet(int index) async {
    final currentUserOrFailure = await sl<GetCurrentUserUseCase>()(NoParams());

    await currentUserOrFailure.fold((_) {}, (currentUser) async {
      final userToUpdate = currentUser.copyWith(
        selectedWalletId: index,
      );

      await sl<UpdateCurrentUserUseCase>()(
          UpdateCurrentUserUseCaseParams(user: userToUpdate));
    });
    _overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) => _WalletPageView(this);
}
