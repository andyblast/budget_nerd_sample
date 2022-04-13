import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconMapper {
  late Map<String, String> assetsMap;
  late Map<String, SvgPicture> iconsMap;
  final BuildContext context;

  IconMapper(this.context);

  SvgPicture allWalletsIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/all_wallets.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture chartIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/chart.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture budgetTabbarIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/budget_icon.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture transactionsTabbarIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/transactions_icon.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture statisticTabbarIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/statistic_icon.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture settingsTabbarIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/settings_icon.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture arrowBackIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/back_arrow.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  Widget arrowForwardIcon({required Color color}) => Transform.rotate(
        angle: 180 * pi / 180,
        child: SvgPicture.asset(
          'assets/icons/main/back_arrow.svg',
          allowDrawingOutsideViewBox: true,
          color: color,
        ),
      );

  SvgPicture googleIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/google.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture loadingIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/loading.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture logoutIcon({required Color color}) => SvgPicture.asset(
        'assets/icons/main/logout.svg',
        allowDrawingOutsideViewBox: true,
        color: color,
      );

  SvgPicture _customSvgPicture(String assetName) => SvgPicture.asset(
        assetName,
        allowDrawingOutsideViewBox: true,
      );

  List<SvgPicture> getAllSvgIcons() {
    var list = <SvgPicture>[];
    assetsMap.forEach((k, v) => list.add(SvgPicture.asset(v)));
    return list;
  }

  SvgPicture getSvgIconByName(String name, [Color? color]) {
    final asset = assetsMap[name];
    return SvgPicture.asset(
      asset!,
      allowDrawingOutsideViewBox: true,
      color: color ?? Colors.white,
    );
  }

  // String getNameBySvgIcon(SvgPicture icon) {
  //   var key = assetsMap.keys
  //       .firstWhere((k) => iconsMap[k] == icon, orElse: () => null);
  //   return key;
  // }

  List<String> getAllSvgIconsName() {
    var list = <String>[];
    assetsMap.keys.forEach((k) => list.add(k));
    return list;
  }

  String getDefaultIconName() {
    return 'dollar';
  }
}
