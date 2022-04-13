part of 'wallet_page.dart';

class _WalletPageView extends WidgetView<WalletPage, _WalletPageState> {
  _WalletPageView(_WalletPageState state) : super(state);

  @override
  Widget build(BuildContext context) {
    return widget.selectedWallet != null
        ? WalletTransactionsList(
            selectedWallet: widget.selectedWallet!,
            transactions: widget.transactions,
          )
        : widget.isAllWalletsSelected
            ? WalletTransactionsList(
                transactions: widget.transactions,
              )
            : Container();
  }
}
