import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';

class SelectCurrencyButton extends StatelessWidget {
  final Function onTap;
  final String? selectedCurrencyCode;

  const SelectCurrencyButton({
    Key? key,
    required this.onTap,
    this.selectedCurrencyCode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () => onTap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedCurrencyCode ?? '',
            style: theme.textTheme.bodyText1?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
            textScaleFactor: SizeConfig.scale,
          ),
          Icon(
            Icons.arrow_drop_down_sharp,
            color: theme.colorScheme.dropDownIcon,
            size: 24,
          ),
        ],
      ),
    );
  }
}
