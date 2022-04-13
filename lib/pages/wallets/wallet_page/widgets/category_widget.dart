import 'package:budget_nerd/core/formatter/amount_formatter.dart';
import 'package:budget_nerd/core/utils/color_converter.dart';
import 'package:budget_nerd/core/utils/icon_mapper.dart';
import 'package:budget_nerd/pages/categories/create_edit_category_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:budget_nerd/core/ui/animations/zoom_tap_animation.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';

class CategoryWidget extends StatefulWidget {
  final CategoryModel categoryModel;
  final CategoryModel? selectedCategory;
  final List<TransactionModel> transactions;
  final WalletModel? selectedWallet;
  final bool isPicker;
  final Function(CategoryModel)? onCallBack;

  CategoryWidget({
    Key? key,
    required this.categoryModel,
    required this.transactions,
    this.selectedWallet,
    required this.isPicker,
    this.selectedCategory,
    this.onCallBack,
  }) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  void _handleOpenTransactionPage() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      elevation: 0,
      context: context,
      builder: (context) {
        return Container();
        // return CreateTransactionPage(
        //   categoryModel: widget.categoryModel,
        //   selectedWallet: widget.selectedWallet,
        // );
      },
    );
  }

  void _handleOpenEditCategoryPage() async {
    await Navigator.pushNamed(
      context,
      '/createEditCategoryPage',
      arguments: CreateEditCategoryPageArgs(
        initCategory: widget.categoryModel,
        categoryType: widget.categoryModel.type,
      ),
    );
  }

  void _handleCallback() {
    widget.onCallBack!(widget.categoryModel);
  }

  double _getTotalAmount() {
    var amount = 0.0;
    widget.transactions.forEach((transaction) {
      if (transaction.amountInWalletCurrency != null)
        amount += transaction.amountInWalletCurrency!;
    });
    return amount;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final icons = IconMapper(context);
    final colorConverter = ColorConverter();

    final isSelectedFromPicker = (widget.isPicker) &&
        widget.categoryModel.id == widget.selectedCategory!.id;

    final color = isSelectedFromPicker
        ? theme.colorScheme.accent.withOpacity(0.8)
        : theme.colorScheme.background;
    final borderColor = isSelectedFromPicker
        ? theme.colorScheme.accent.withOpacity(0.8)
        : colorConverter.getColor(widget.categoryModel.color);
    final iconColor =
        isSelectedFromPicker ? Colors.white : theme.colorScheme.onBackground;

    final amount = _getTotalAmount();

    // TODO
    final symbol = widget.selectedWallet != null
        ? widget.selectedWallet!.currencySymbolNative
        : 'x';

    return ZoomTapAnimation(
      endDuration: Duration(milliseconds: 50),
      onTap: () =>
          widget.isPicker ? _handleCallback() : _handleOpenTransactionPage(),
      onLongTap: () => widget.isPicker ? null : _handleOpenEditCategoryPage(),
      child: Column(
        children: [
          SizedBox(
            height: 23,
            child: Text(
              widget.categoryModel.title,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyText2?.copyWith(fontSize: 15),
              textScaleFactor: SizeConfig.textScale,
            ),
          ),
          if (widget.isPicker) SizedBox(height: 10),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              border: Border.all(
                width: 2,
                color: borderColor,
                style: BorderStyle.solid,
              ),
              boxShadow: theme.brightness == Brightness.light
                  ? [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.05),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
            child: Center(
              child: icons.getSvgIconByName(
                widget.categoryModel.icon,
                iconColor,
              ),
            ),
          ),
          if (!widget.isPicker)
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  Text(
                    '${formatAmount(amount)} $symbol',
                    style: theme.textTheme.caption?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: theme.colorScheme.onBackground,
                    ),
                    textScaleFactor: SizeConfig.textScale,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class StubCategoryWidget extends StatelessWidget {
  final CategoryTypes type;

  const StubCategoryWidget({Key? key, required this.type}) : super(key: key);

  void _handleOpenCreateCategoryPage(BuildContext context) async {
    await Navigator.pushNamed(
      context,
      '/createEditCategoryPage',
      arguments:
          CreateEditCategoryPageArgs(initCategory: null, categoryType: type),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final theme = Theme.of(context);
    return ZoomTapAnimation(
      onTap: () => _handleOpenCreateCategoryPage(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(
                  height: 23,
                ),
                DottedBorder(
                  color: theme.colorScheme.buttonBorder,
                  borderType: BorderType.RRect,
                  dashPattern: [5, 5],
                  radius: Radius.circular(25.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        size: 12,
                        color: theme.colorScheme.stubCategoryPlus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: theme.colorScheme.stubCategoryCircle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Icon(
                    Icons.star,
                    size: 16,
                    color: theme.colorScheme.stubCategoryIcon,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
