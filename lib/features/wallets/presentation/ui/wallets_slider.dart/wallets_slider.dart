import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/features/current_user/data/index.dart';
import 'package:budget_nerd/features/exchangerates/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'all_wallets_card.dart';
import 'wallet_card.dart';
import 'wallet_empty_card.dart';

class WalletsSlider extends StatefulWidget {
  final List<WalletModel> walletsList;
  final UserModel currentUser;
  final WalletModel? selectedWallet;
  final ExchangeRateModel? exchangerates;
  final CurrencyModel homeCurrency;
  final Map<String, CurrencyModel> currenciesHash;
  final Function(int) onWalletChanged;

  WalletsSlider({
    Key? key,
    required this.walletsList,
    required this.currentUser,
    this.selectedWallet,
    this.exchangerates,
    required this.homeCurrency,
    required this.onWalletChanged,
    required this.currenciesHash,
  }) : super(key: key);

  @override
  State<WalletsSlider> createState() => _WalletsSliderState();
}

class _WalletsSliderState extends State<WalletsSlider> {
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final index = widget.selectedWallet != null
        ? widget.walletsList.indexWhere(
                (element) => element.id == widget.selectedWallet!.id) +
            1
        : widget.walletsList.length + 1;

    return CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
        height: 150.0,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
        initialPage: index,
        onPageChanged: (index, _) {
          widget.onWalletChanged(index - 1);
        },
      ),
      items: [
        AllWalletsCard(
          walletsList: widget.walletsList,
          homeCurrency: widget.homeCurrency,
          exchangerates: widget.exchangerates,
        ),
        ...widget.walletsList.map(
          (wallet) => WalletsSliderCard(
            wallet: wallet,
            currentUser: widget.currentUser,
            homeCurrency: widget.homeCurrency,
            walletCurrency: widget.currenciesHash[wallet.currencyCode]!,
            exchangerates: widget.exchangerates,
          ),
        ),
        WalletEmptyCard(
          onWalletCreated: () async {
            await Future.delayed(Duration(milliseconds: 100));
            _carouselController.jumpToPage(1);
          },
        ),
      ],
    );
  }
}
