import 'package:equatable/equatable.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/tables/joins/transactions/transaction_with_joins.dart';
import 'package:budget_nerd/db/tables/transactions.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/categories/data/index.dart';

class TransactionModel extends Equatable {
  final int? id;
  final String? note;
  final String currencyCode;
  final String currencySymbolNative;
  final int walletId;
  final DateTime? date;
  final double amount;
  final double? amountInWalletCurrency;
  final TransactionTypes type;

  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;

  final WalletModel? wallet;
  final CategoryModel? category;
  final int? categoryId;

  String get textType {
    switch (type) {
      case TransactionTypes.income:
        return 'income';
      case TransactionTypes.expense:
        return 'expense';
      default:
        return 'initialTransaction';
    }
  }

  TransactionModel({
    this.createdAt,
    this.updatedAt,
    this.syncedAt,
    this.categoryId,
    this.id,
    required this.amount,
    required this.walletId,
    required this.currencyCode,
    required this.currencySymbolNative,
    required this.type,
    this.wallet,
    this.category,
    this.amountInWalletCurrency,
    this.date,
    this.note,
  });

  @override
  List<Object?> get props => [id, createdAt, walletId, type];

  factory TransactionModel.fromMoor(Transaction moorTransaction) {
    return TransactionModel(
      id: moorTransaction.id,
      walletId: moorTransaction.walletId,
      note: moorTransaction.note,
      amount: moorTransaction.amount,
      currencyCode: moorTransaction.currencyCode,
      currencySymbolNative: moorTransaction.currencySymbolNative,
      amountInWalletCurrency: moorTransaction.amountInWalletCurrency,
      type: moorTransaction.type,
      date: moorTransaction.date,
      categoryId: moorTransaction.categoryId,
      createdAt: moorTransaction.createdAt,
      updatedAt: moorTransaction.updatedAt,
      syncedAt: moorTransaction.syncedAt,
    );
  }

  factory TransactionModel.fromMoorWithJoins(
      TransactionWithJoins moorTransaction) {
    return TransactionModel(
        id: moorTransaction.transaction.id,
        walletId: moorTransaction.transaction.walletId,
        note: moorTransaction.transaction.note,
        amount: moorTransaction.transaction.amount,
        currencyCode: moorTransaction.transaction.currencyCode,
        currencySymbolNative: moorTransaction.transaction.currencySymbolNative,
        amountInWalletCurrency:
            moorTransaction.transaction.amountInWalletCurrency,
        type: moorTransaction.transaction.type,
        date: moorTransaction.transaction.date,
        categoryId: moorTransaction.transaction.categoryId,
        createdAt: moorTransaction.transaction.createdAt,
        updatedAt: moorTransaction.transaction.updatedAt,
        syncedAt: moorTransaction.transaction.syncedAt,
        wallet: WalletModel.fromMoor(moorTransaction.wallet),
        category: CategoryModel.fromMoor(moorTransaction.category));
  }

  Transaction toMoor() {
    return Transaction(
      id: id,
      amountInWalletCurrency: amountInWalletCurrency,
      currencyCode: currencyCode,
      currencySymbolNative: currencySymbolNative,
      walletId: walletId,
      date: date,
      amount: amount,
      type: type,
      note: note,
      categoryId: categoryId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncedAt: syncedAt,
    );
  }

  TransactionModel copyWith(
      {amountInWalletCurrency,
      amount,
      currencyCode,
      currencySymbolNative,
      type,
      note,
      id,
      date,
      walletId,
      categoryId,
      updatedAt,
      syncedAt}) {
    return TransactionModel(
      note: note ?? this.note,
      type: type ?? this.type,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbolNative: currencySymbolNative ?? this.currencySymbolNative,
      walletId: walletId ?? this.walletId,
      id: id ?? this.id,
      amount: amount ?? this.amount,
      date: date ?? this.date,
      amountInWalletCurrency:
          amountInWalletCurrency ?? this.amountInWalletCurrency,
      categoryId: categoryId ?? this.categoryId,
      category: category ?? this.category,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
      createdAt: createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'date': date.toString(),
      'wallet_id': walletId.toString(),
      'currency_code': currencyCode,
      'category_id': categoryId.toString(),
      'note': note,
      'amount': amount.toString(),
      'amount_in_wallet_currency': amountInWalletCurrency.toString(),
      'type': textType,
      'updated_at': updatedAt.toString(),
      'created_at': createdAt.toString(),
    };
  }
}
