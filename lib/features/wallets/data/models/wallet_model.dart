import 'package:equatable/equatable.dart';
import 'package:budget_nerd/db/moor.dart';

class WalletModel extends Equatable {
  final int? id;
  final String name;
  final String currencyCode;
  final String currencySymbolNative;
  final double? balance;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;

  WalletModel({
    this.id,
    required this.name,
    required this.currencyCode,
    required this.currencySymbolNative,
    this.balance,
    this.updatedAt,
    this.createdAt,
    this.syncedAt,
  });

  @override
  List<Object> get props => [name, currencyCode];

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
        id: json['id'] as int,
        createdAt: json['createdAt'] as DateTime,
        updatedAt: json['updatedAt'] as DateTime,
        syncedAt: json['syncedAt'] as DateTime,
        name: json['name'] as String,
        currencyCode: json['currencyCode'] as String,
        currencySymbolNative: json['currencySymbolNative'] as String,
        balance: json['balance'] as double);
  }

  factory WalletModel.fromMoor(Wallet moorWallet) {
    return WalletModel(
        id: moorWallet.id,
        createdAt: moorWallet.createdAt,
        updatedAt: moorWallet.updatedAt,
        syncedAt: moorWallet.syncedAt,
        name: moorWallet.name,
        currencyCode: moorWallet.currencyCode,
        currencySymbolNative: moorWallet.currencySymbolNative,
        balance: moorWallet.balance);
  }

  Wallet toMoor() {
    return Wallet(
        createdAt: createdAt,
        updatedAt: updatedAt,
        syncedAt: syncedAt,
        id: id,
        name: name,
        currencyCode: currencyCode,
        currencySymbolNative: currencySymbolNative,
        balance: balance);
  }

  WalletModel copyWith({
    name,
    balance,
    id,
    updatedAt,
    syncedAt,
    currencyCode,
    currencySymbolNative,
  }) {
    return WalletModel(
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
      id: id ?? this.id,
      name: name ?? this.name,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbolNative: currencySymbolNative ?? this.currencySymbolNative,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'name': name,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
      'currency_code': currencyCode,
      'currency_symbol_native': currencySymbolNative,
      'balance': balance.toString(),
    };
  }
}
