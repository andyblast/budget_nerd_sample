import 'dart:io';

import 'package:budget_nerd/pages/categories/create_edit_category_page.dart';
import 'package:budget_nerd/pages/color_picker/color_picker_page.dart';
import 'package:budget_nerd/pages/icon_picker/icon_picker_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/wallets/create_wallet/create_edit_wallet_page.dart';

class NavigatorRouter {
  final BuildContext context;
  final RouteSettings settings;

  NavigatorRouter({required this.context, required this.settings});

  PageRoute<dynamic> onGenerateRoutes() {
    switch (settings.name) {
      // case '/':
      //   return getPlatformPageRoute((_) => PageWrapper());

      case '/createEditWalletPage':
        return getPlatformPageRoute(
          (BuildContext context) {
            final arg = settings.arguments as CreateEditWalletPageArgs;
            return CreateEditWalletPage(
              initWallet: arg.initWallet,
            );
          },
        );

      case '/createEditCategoryPage':
        return getPlatformPageRoute((BuildContext context) {
          final arg = settings.arguments as CreateEditCategoryPageArgs;
          return CreateEditCategoryPage(
            initCategory: arg.initCategory,
            categoryType: arg.categoryType,
          );
        });

      case '/colorPickerPage':
        return getPlatformPageRoute((BuildContext context) {
          final arg = settings.arguments as ColorPickerPageArgs;
          return ColorPickerPage(
            colorName: arg.colorName,
          );
        });

      case '/iconPickerPage':
        return getPlatformPageRoute((BuildContext context) {
          final arg = settings.arguments as IconPickerPageArgs;
          return IconPickerPage(
            iconName: arg.iconName,
          );
        });

      default:
        return getPlatformPageRoute(
          (_) => Scaffold(
            body: Center(
              child: Text('Scaffold'),
            ),
          ),
        );
    }
  }

  PageRoute getPlatformPageRoute(Widget Function(BuildContext) builder) {
    return Platform.isIOS
        ? CupertinoPageRoute(builder: builder)
        : MaterialPageRoute(builder: builder);
  }
}
