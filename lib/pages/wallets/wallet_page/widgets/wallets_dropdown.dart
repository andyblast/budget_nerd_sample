import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';

class WalletsDropDown extends StatelessWidget {
  final Function onCloseOverlay;
  final Function(int) onWalletSelect;
  final List<WalletModel>? walletsList;
  final WalletModel? selectedWallet;

  const WalletsDropDown({
    required this.onCloseOverlay,
    this.walletsList,
    this.selectedWallet,
    required this.onWalletSelect,
  });

  final itemHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    SizeConfig().init(context);

    return Stack(
      children: [
        GestureDetector(
          onTap: () => onCloseOverlay(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: _buildBody(theme),
        ),
      ],
    );
  }

  Widget _buildBody(ThemeData theme) {
    return Container(
      margin: EdgeInsets.only(top: 80, left: 15),
      width: 150,
      height: (walletsList != null && walletsList!.isNotEmpty)
          ? itemHeight * walletsList!.length
          : itemHeight,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: walletsList?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: theme.colorScheme.grayMain,
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 40,
            child: GestureDetector(
              onTap: () => onWalletSelect(walletsList!.elementAt(index).id!),
              child: _buildItem(index, theme),
            ),
          );
        },
      ),
    );
  }

  Widget _buildItem(int index, ThemeData theme) {
    return walletsList!.elementAt(index).id == selectedWallet!.id
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                walletsList!.elementAt(index).name,
                style: theme.textTheme.bodyText1?.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
                textScaleFactor: SizeConfig.textScale,
              ),
              Container(
                child: Icon(Icons.check),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                walletsList!.elementAt(index).name,
                style: theme.textTheme.bodyText1!.copyWith(
                  color: theme.colorScheme.onBackground,
                ),
                textScaleFactor: SizeConfig.textScale,
              ),
              Container(),
            ],
          );
  }
}
