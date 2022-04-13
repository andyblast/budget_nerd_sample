import 'package:budget_nerd/pages/wallets/wallet_page/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/index.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';

class WalletTransactionsList extends StatefulWidget {
  final WalletModel? selectedWallet;
  final List<TransactionModel>? transactions;
  final bool? isPicker;
  final CategoryModel? selectedCategory;
  final Function(CategoryModel)? onCallBack;

  WalletTransactionsList({
    Key? key,
    this.selectedWallet,
    this.transactions,
    this.isPicker,
    this.selectedCategory,
    this.onCallBack,
  }) : super(key: key);

  @override
  _WalletTransactionsListState createState() => _WalletTransactionsListState();
}

class _WalletTransactionsListState extends State<WalletTransactionsList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Stack(
                fit: StackFit.passthrough,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: theme.colorScheme.grayMain, width: 1),
                      ),
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorColor: theme.colorScheme.accent,
                    indicatorWeight: 1.0,
                    labelColor: theme.colorScheme.accent,
                    unselectedLabelColor: theme.colorScheme.grayMain,
                    labelStyle: theme.textTheme.bodyText2,
                    labelPadding: EdgeInsets.all(0),
                    overlayColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      return Colors.transparent;
                    }),
                    tabs: [
                      _buildTabItem('Expences', theme.colorScheme.background),
                      _buildTabItem('Income', theme.colorScheme.background),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                controller: _tabController,
                children: <Widget>[
                  Center(
                    child: CategoriesGrid(
                      type: CategoryTypes.expense,
                      selectedWallet: widget.selectedWallet,
                      transactions: widget.transactions,
                      isPicker: widget.isPicker,
                      selectedCategory: widget.selectedCategory,
                      onCallBack: widget.onCallBack,
                    ),
                  ),
                  Center(
                    child: CategoriesGrid(
                      type: CategoryTypes.income,
                      selectedWallet: widget.selectedWallet,
                      transactions: widget.transactions,
                      isPicker: widget.isPicker,
                      selectedCategory: widget.selectedCategory,
                      onCallBack: widget.onCallBack,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(String label, Color color) {
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Text(
          label,
          textScaleFactor: SizeConfig.textScale,
        ),
      ),
    );
  }
}
