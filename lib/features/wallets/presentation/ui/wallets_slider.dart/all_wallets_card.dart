import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/exchangerates/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:flutter/material.dart';

class AllWalletsCard extends StatelessWidget {
  final List<WalletModel> walletsList;
  final CurrencyModel homeCurrency;
  final ExchangeRateModel? exchangerates;

  const AllWalletsCard({
    Key? key,
    required this.walletsList,
    required this.homeCurrency,
    this.exchangerates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
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
                  Text('Total balance'),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: TotalBalanceField(
          //     walletsList: walletsList,
          //     homeCurrency: homeCurrency,
          //     exchangerates: exchangerates,
          //   ),
          // ),
        ],
      ),
    );
  }
}
