import 'package:budget_nerd/core/formatter/amount_formatter.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/exchangerates/data/models/exchange_rate_model.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';

class WalletBalanceWidget extends StatefulWidget {
  final UserModel currentUser;
  final WalletModel selectedWallet;
  final ExchangeRateModel? exchangerates;
  final CurrencyModel homeCurrency;
  final CurrencyModel selectedWalletCurrency;

  const WalletBalanceWidget({
    Key? key,
    required this.currentUser,
    required this.selectedWallet,
    this.exchangerates,
    required this.homeCurrency,
    required this.selectedWalletCurrency,
  }) : super(key: key);

  @override
  _WalletBalanceWidgetState createState() => _WalletBalanceWidgetState();
}

class _WalletBalanceWidgetState extends State<WalletBalanceWidget> {
  double? _balanceInHomeCurrency() {
    if (widget.exchangerates != null) {
      var homeRate =
          widget.exchangerates!.rates[widget.currentUser.homeCurrency];
      var bankRate =
          widget.exchangerates!.rates[widget.selectedWallet.currencyCode];
      if (homeRate != null && bankRate != null) {
        return (homeRate / bankRate) * widget.selectedWallet.balance!;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isHomeCurrency =
        widget.selectedWallet.currencyCode == widget.currentUser.homeCurrency;

    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${formatAmount(widget.selectedWallet.balance)} ${widget.selectedWalletCurrency.symbolNative}',
              maxLines: 1,
              style: theme.textTheme.headline1?.copyWith(
                color: theme.colorScheme.onBackground,
              ),
              textScaleFactor: SizeConfig.textScale,
            ),
            if (!isHomeCurrency)
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: _renderBalanceInHomeCurrency(theme),
              ),
          ],
        ),
      ),
    );
  }

  Text _renderBalanceInHomeCurrency(ThemeData theme) {
    if (widget.exchangerates != null) {
      return Text(
        '${formatAmount(_balanceInHomeCurrency())} ${widget.homeCurrency.symbolNative}',
        style: theme.textTheme.caption?.copyWith(
          color: theme.colorScheme.walletBalance,
        ),
        textScaleFactor: SizeConfig.textScale,
      );
    } else {
      return Text('');
    }
  }
}
