import 'package:budget_nerd/db/moor.dart';

class TransactionWithJoins {
  TransactionWithJoins({
    required this.transaction,
    required this.wallet,
    required this.category,
  });

  final Transaction transaction;
  final Wallet wallet;
  final Categorie category;
}
