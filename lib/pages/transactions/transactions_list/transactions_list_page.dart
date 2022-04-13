import 'package:budget_nerd/core/ui/index.dart';
import 'package:budget_nerd/core/ui/widget_view/widget_view.dart';
import 'package:budget_nerd/features/transactions/data/index.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sticky_headers/sticky_headers.dart';

import 'widgets/transactions_list_item.dart';

part 'transactions_list_page_view.dart';

class TransactionsListPage extends StatefulWidget {
  final List<TransactionModel> transactions;
  final Map<String, List<TransactionModel>> groupedTransactions;
  final WalletModel? selectedWallet;

  const TransactionsListPage({
    Key? key,
    required this.transactions,
    required this.groupedTransactions,
    this.selectedWallet,
  }) : super(key: key);

  @override
  _TransactionsListPageState createState() => _TransactionsListPageState();
}

class _TransactionsListPageState extends State<TransactionsListPage> {
  @override
  Widget build(BuildContext context) => _TransactionsListPageView(this);
}
