enum PageName { wallet, transaction, statistic, settings }

extension PageNameExtension on PageName {
  int get id {
    switch (this) {
      case PageName.wallet:
        return 0;
      case PageName.transaction:
        return 1;
      case PageName.statistic:
        return 2;
      case PageName.settings:
        return 3;
      default:
        return 0;
    }
  }
}
