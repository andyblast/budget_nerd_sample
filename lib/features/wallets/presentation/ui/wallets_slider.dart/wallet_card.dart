import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/exchangerates/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/pages/wallets/wallet_page/widgets/index.dart';
import 'package:flutter/material.dart';

class WalletsSliderCard extends StatelessWidget {
  final WalletModel wallet;
  final UserModel currentUser;
  final ExchangeRateModel? exchangerates;
  final CurrencyModel homeCurrency;
  final CurrencyModel walletCurrency;

  const WalletsSliderCard({
    Key? key,
    required this.wallet,
    required this.currentUser,
    this.exchangerates,
    required this.homeCurrency,
    required this.walletCurrency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Color(0xFF8E54C4),
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 10,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(wallet.name),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: WalletBalanceWidget(
              currentUser: currentUser,
              selectedWallet: wallet,
              exchangerates: exchangerates,
              homeCurrency: homeCurrency,
              selectedWalletCurrency: walletCurrency,
            ),
          ),
        ],
      ),
    );
  }
}
