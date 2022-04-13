import 'package:budget_nerd/features/categories/presentation/bloc/categories_list_bloc.dart';
import 'package:budget_nerd/pages/wallets/wallet_page/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/db/tables/tables.dart';
import 'package:budget_nerd/features/categories/data/index.dart';

import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/injection_container.dart';

class CategoriesGrid extends StatelessWidget {
  final CategoryTypes type;
  final WalletModel? selectedWallet;
  final List<TransactionModel>? transactions;
  final bool? isPicker;
  final CategoryModel? selectedCategory;
  final Function(CategoryModel)? onCallBack;

  const CategoriesGrid({
    Key? key,
    required this.type,
    this.selectedWallet,
    this.transactions,
    this.isPicker,
    this.selectedCategory,
    this.onCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoriesListBloc>(
      create: (context) =>
          sl<CategoriesListBloc>()..add(ReadCategoriesListEvent()),
      child: _CategoriesGrid(
        type: type,
        selectedWallet: selectedWallet,
        transactions: transactions ?? [],
        isPicker: isPicker ?? false,
        selectedCategory: selectedCategory ?? null,
        onCallBack: onCallBack,
      ),
    );
  }
}

class _CategoriesGrid extends StatefulWidget {
  final CategoryTypes type;
  final WalletModel? selectedWallet;
  final List<TransactionModel>? transactions;

  final bool isPicker;
  final CategoryModel? selectedCategory;
  final Function(CategoryModel)? onCallBack;

  _CategoriesGrid({
    Key? key,
    required this.type,
    this.selectedWallet,
    this.transactions,
    required this.isPicker,
    this.selectedCategory,
    this.onCallBack,
  }) : super(key: key);

  @override
  _CategoriesGridState createState() => _CategoriesGridState();
}

class _CategoriesGridState extends State<_CategoriesGrid> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoriesListBloc>(context).add(ReadCategoriesListEvent());
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return BlocBuilder<CategoriesListBloc, CategoriesListState>(
        builder: (context, state) {
      if (state is LoadedCategoriesListState) {
        return _buildBody(state.categoriesList
            .where((element) => element.type == widget.type)
            .toList());
      } else {
        return Container();
      }
    });
  }

  Widget _buildBody(List<CategoryModel> categories) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisExtent: 120,
        ),
        itemCount: widget.isPicker ? categories.length : categories.length + 1,
        itemBuilder: (context, index) {
          if (!widget.isPicker) {
            if (index == categories.length) {
              return StubCategoryWidget(type: widget.type);
            } else {
              final categoryTransactions = widget.transactions!
                  .where((transaction) =>
                      transaction.categoryId == categories.elementAt(index).id)
                  .toList();
              return CategoryWidget(
                categoryModel: categories.elementAt(index),
                transactions: categoryTransactions,
                selectedWallet: widget.selectedWallet,
                selectedCategory: widget.selectedCategory,
                isPicker: widget.isPicker,
              );
            }
          } else {
            final categoryTransactions = widget.transactions!
                .where((transaction) =>
                    transaction.categoryId == categories.elementAt(index).id)
                .toList();
            return CategoryWidget(
              categoryModel: categories.elementAt(index),
              transactions: categoryTransactions,
              selectedWallet: widget.selectedWallet,
              isPicker: widget.isPicker,
              selectedCategory: widget.selectedCategory,
              onCallBack: widget.onCallBack,
            );
          }
        },
      ),
    );
  }
}
