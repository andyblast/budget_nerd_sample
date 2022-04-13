import 'package:budget_nerd/core/ui/forms/index.dart';
import 'package:budget_nerd/pages/wallets/create_wallet/create_edit_wallet_page.dart';
import 'package:flutter/material.dart';

class CreateWalletButton extends StatelessWidget {
  const CreateWalletButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedButton(
      onTap: () async {
        await Navigator.pushNamed(
          context,
          '/createEditWalletPage',
          arguments: CreateEditWalletPageArgs(initWallet: null),
        );
      },
      title: 'Create wallet',
    );
  }
}
