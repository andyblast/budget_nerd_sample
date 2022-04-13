import 'package:budget_nerd/core/ui/search_delegate/currencies_search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/features/currencies/data/index.dart';
import 'package:budget_nerd/core/ui/search_delegate/search.dart' as search;

class SelectCurrencyField extends StatefulWidget {
  final CurrencyModel selectedCurrency;
  final Function(CurrencyModel) onCurrencySelect;
  final Function? onPageOpen;

  const SelectCurrencyField({
    Key? key,
    required this.onCurrencySelect,
    required this.selectedCurrency,
    this.onPageOpen,
  }) : super(key: key);

  @override
  _SelectCurrencyFieldState createState() => _SelectCurrencyFieldState();
}

class _SelectCurrencyFieldState extends State<SelectCurrencyField> {
  void _handleOpenCurrenciesPage() async {
    if (widget.onPageOpen != null) {
      widget.onPageOpen!();
    }

    final result = await search.showSearch(
      context: context,
      delegate: CurrenciesSearchDelegate(
        selectedCurrencyCode: widget.selectedCurrency.code,
      ),
    );
    if (result != null) {
      widget.onCurrencySelect(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Currency',
            style: theme.textTheme.bodyText1?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
            textScaleFactor: SizeConfig.scale,
          ),
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: _handleOpenCurrenciesPage,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.selectedCurrency.code,
                  style: theme.textTheme.bodyText1?.copyWith(
                    color: theme.colorScheme.onBackground,
                  ),
                  textScaleFactor: SizeConfig.scale,
                ),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: theme.colorScheme.onBackground,
                  size: 17,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
