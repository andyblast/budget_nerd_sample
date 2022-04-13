// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Wallet extends DataClass implements Insertable<Wallet> {
  final int? id;
  final String name;
  final String currencyCode;
  final String currencySymbolNative;
  final double? balance;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;
  Wallet(
      {this.id,
      required this.name,
      required this.currencyCode,
      required this.currencySymbolNative,
      this.balance,
      this.createdAt,
      this.updatedAt,
      this.syncedAt});
  factory Wallet.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Wallet(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      currencyCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}currency_code'])!,
      currencySymbolNative: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}currency_symbol_native'])!,
      balance: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}balance']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      syncedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}synced_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['name'] = Variable<String>(name);
    map['currency_code'] = Variable<String>(currencyCode);
    map['currency_symbol_native'] = Variable<String>(currencySymbolNative);
    if (!nullToAbsent || balance != null) {
      map['balance'] = Variable<double?>(balance);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    if (!nullToAbsent || syncedAt != null) {
      map['synced_at'] = Variable<DateTime?>(syncedAt);
    }
    return map;
  }

  WalletsCompanion toCompanion(bool nullToAbsent) {
    return WalletsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
      currencyCode: Value(currencyCode),
      currencySymbolNative: Value(currencySymbolNative),
      balance: balance == null && nullToAbsent
          ? const Value.absent()
          : Value(balance),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      syncedAt: syncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(syncedAt),
    );
  }

  factory Wallet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Wallet(
      id: serializer.fromJson<int?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      currencyCode: serializer.fromJson<String>(json['currencyCode']),
      currencySymbolNative:
          serializer.fromJson<String>(json['currencySymbolNative']),
      balance: serializer.fromJson<double?>(json['balance']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      syncedAt: serializer.fromJson<DateTime?>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'name': serializer.toJson<String>(name),
      'currencyCode': serializer.toJson<String>(currencyCode),
      'currencySymbolNative': serializer.toJson<String>(currencySymbolNative),
      'balance': serializer.toJson<double?>(balance),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'syncedAt': serializer.toJson<DateTime?>(syncedAt),
    };
  }

  Wallet copyWith(
          {int? id,
          String? name,
          String? currencyCode,
          String? currencySymbolNative,
          double? balance,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? syncedAt}) =>
      Wallet(
        id: id ?? this.id,
        name: name ?? this.name,
        currencyCode: currencyCode ?? this.currencyCode,
        currencySymbolNative: currencySymbolNative ?? this.currencySymbolNative,
        balance: balance ?? this.balance,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncedAt: syncedAt ?? this.syncedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Wallet(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencySymbolNative: $currencySymbolNative, ')
          ..write('balance: $balance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, currencyCode, currencySymbolNative,
      balance, createdAt, updatedAt, syncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Wallet &&
          other.id == this.id &&
          other.name == this.name &&
          other.currencyCode == this.currencyCode &&
          other.currencySymbolNative == this.currencySymbolNative &&
          other.balance == this.balance &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncedAt == this.syncedAt);
}

class WalletsCompanion extends UpdateCompanion<Wallet> {
  final Value<int?> id;
  final Value<String> name;
  final Value<String> currencyCode;
  final Value<String> currencySymbolNative;
  final Value<double?> balance;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> syncedAt;
  const WalletsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.currencySymbolNative = const Value.absent(),
    this.balance = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  WalletsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String currencyCode,
    required String currencySymbolNative,
    this.balance = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  })  : name = Value(name),
        currencyCode = Value(currencyCode),
        currencySymbolNative = Value(currencySymbolNative);
  static Insertable<Wallet> custom({
    Expression<int?>? id,
    Expression<String>? name,
    Expression<String>? currencyCode,
    Expression<String>? currencySymbolNative,
    Expression<double?>? balance,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
    Expression<DateTime?>? syncedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (currencySymbolNative != null)
        'currency_symbol_native': currencySymbolNative,
      if (balance != null) 'balance': balance,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncedAt != null) 'synced_at': syncedAt,
    });
  }

  WalletsCompanion copyWith(
      {Value<int?>? id,
      Value<String>? name,
      Value<String>? currencyCode,
      Value<String>? currencySymbolNative,
      Value<double?>? balance,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? syncedAt}) {
    return WalletsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbolNative: currencySymbolNative ?? this.currencySymbolNative,
      balance: balance ?? this.balance,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (currencySymbolNative.present) {
      map['currency_symbol_native'] =
          Variable<String>(currencySymbolNative.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double?>(balance.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime?>(syncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencySymbolNative: $currencySymbolNative, ')
          ..write('balance: $balance, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }
}

class $WalletsTable extends Wallets with TableInfo<$WalletsTable, Wallet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 32),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String?> currencyCode =
      GeneratedColumn<String?>('currency_code', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: const StringType(),
          requiredDuringInsert: true);
  final VerificationMeta _currencySymbolNativeMeta =
      const VerificationMeta('currencySymbolNative');
  @override
  late final GeneratedColumn<String?> currencySymbolNative =
      GeneratedColumn<String?>('currency_symbol_native', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _balanceMeta = const VerificationMeta('balance');
  @override
  late final GeneratedColumn<double?> balance = GeneratedColumn<double?>(
      'balance', aliasedName, true,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _syncedAtMeta = const VerificationMeta('syncedAt');
  @override
  late final GeneratedColumn<DateTime?> syncedAt = GeneratedColumn<DateTime?>(
      'synced_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        currencyCode,
        currencySymbolNative,
        balance,
        createdAt,
        updatedAt,
        syncedAt
      ];
  @override
  String get aliasedName => _alias ?? 'wallets';
  @override
  String get actualTableName => 'wallets';
  @override
  VerificationContext validateIntegrity(Insertable<Wallet> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    } else if (isInserting) {
      context.missing(_currencyCodeMeta);
    }
    if (data.containsKey('currency_symbol_native')) {
      context.handle(
          _currencySymbolNativeMeta,
          currencySymbolNative.isAcceptableOrUnknown(
              data['currency_symbol_native']!, _currencySymbolNativeMeta));
    } else if (isInserting) {
      context.missing(_currencySymbolNativeMeta);
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('synced_at')) {
      context.handle(_syncedAtMeta,
          syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Wallet map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Wallet.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $WalletsTable createAlias(String alias) {
    return $WalletsTable(attachedDatabase, alias);
  }
}

class Transaction extends DataClass implements Insertable<Transaction> {
  final int? id;
  final DateTime? date;
  final int walletId;
  final int? categoryId;
  final String? note;
  final String currencyCode;
  final String currencySymbolNative;
  final double amount;
  final double? amountInWalletCurrency;
  final TransactionTypes type;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;
  Transaction(
      {this.id,
      this.date,
      required this.walletId,
      this.categoryId,
      this.note,
      required this.currencyCode,
      required this.currencySymbolNative,
      required this.amount,
      this.amountInWalletCurrency,
      required this.type,
      this.createdAt,
      this.updatedAt,
      this.syncedAt});
  factory Transaction.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Transaction(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date']),
      walletId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}wallet_id'])!,
      categoryId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_id']),
      note: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note']),
      currencyCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}currency_code'])!,
      currencySymbolNative: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}currency_symbol_native'])!,
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      amountInWalletCurrency: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}amount_in_wallet_currency']),
      type: $TransactionsTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']))!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      syncedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}synced_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime?>(date);
    }
    map['wallet_id'] = Variable<int>(walletId);
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<int?>(categoryId);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String?>(note);
    }
    map['currency_code'] = Variable<String>(currencyCode);
    map['currency_symbol_native'] = Variable<String>(currencySymbolNative);
    map['amount'] = Variable<double>(amount);
    if (!nullToAbsent || amountInWalletCurrency != null) {
      map['amount_in_wallet_currency'] =
          Variable<double?>(amountInWalletCurrency);
    }
    {
      final converter = $TransactionsTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type)!);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    if (!nullToAbsent || syncedAt != null) {
      map['synced_at'] = Variable<DateTime?>(syncedAt);
    }
    return map;
  }

  TransactionsCompanion toCompanion(bool nullToAbsent) {
    return TransactionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      walletId: Value(walletId),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      currencyCode: Value(currencyCode),
      currencySymbolNative: Value(currencySymbolNative),
      amount: Value(amount),
      amountInWalletCurrency: amountInWalletCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(amountInWalletCurrency),
      type: Value(type),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      syncedAt: syncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(syncedAt),
    );
  }

  factory Transaction.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Transaction(
      id: serializer.fromJson<int?>(json['id']),
      date: serializer.fromJson<DateTime?>(json['date']),
      walletId: serializer.fromJson<int>(json['walletId']),
      categoryId: serializer.fromJson<int?>(json['categoryId']),
      note: serializer.fromJson<String?>(json['note']),
      currencyCode: serializer.fromJson<String>(json['currencyCode']),
      currencySymbolNative:
          serializer.fromJson<String>(json['currencySymbolNative']),
      amount: serializer.fromJson<double>(json['amount']),
      amountInWalletCurrency:
          serializer.fromJson<double?>(json['amountInWalletCurrency']),
      type: serializer.fromJson<TransactionTypes>(json['type']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      syncedAt: serializer.fromJson<DateTime?>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'date': serializer.toJson<DateTime?>(date),
      'walletId': serializer.toJson<int>(walletId),
      'categoryId': serializer.toJson<int?>(categoryId),
      'note': serializer.toJson<String?>(note),
      'currencyCode': serializer.toJson<String>(currencyCode),
      'currencySymbolNative': serializer.toJson<String>(currencySymbolNative),
      'amount': serializer.toJson<double>(amount),
      'amountInWalletCurrency':
          serializer.toJson<double?>(amountInWalletCurrency),
      'type': serializer.toJson<TransactionTypes>(type),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'syncedAt': serializer.toJson<DateTime?>(syncedAt),
    };
  }

  Transaction copyWith(
          {int? id,
          DateTime? date,
          int? walletId,
          int? categoryId,
          String? note,
          String? currencyCode,
          String? currencySymbolNative,
          double? amount,
          double? amountInWalletCurrency,
          TransactionTypes? type,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? syncedAt}) =>
      Transaction(
        id: id ?? this.id,
        date: date ?? this.date,
        walletId: walletId ?? this.walletId,
        categoryId: categoryId ?? this.categoryId,
        note: note ?? this.note,
        currencyCode: currencyCode ?? this.currencyCode,
        currencySymbolNative: currencySymbolNative ?? this.currencySymbolNative,
        amount: amount ?? this.amount,
        amountInWalletCurrency:
            amountInWalletCurrency ?? this.amountInWalletCurrency,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncedAt: syncedAt ?? this.syncedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Transaction(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('walletId: $walletId, ')
          ..write('categoryId: $categoryId, ')
          ..write('note: $note, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencySymbolNative: $currencySymbolNative, ')
          ..write('amount: $amount, ')
          ..write('amountInWalletCurrency: $amountInWalletCurrency, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      date,
      walletId,
      categoryId,
      note,
      currencyCode,
      currencySymbolNative,
      amount,
      amountInWalletCurrency,
      type,
      createdAt,
      updatedAt,
      syncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transaction &&
          other.id == this.id &&
          other.date == this.date &&
          other.walletId == this.walletId &&
          other.categoryId == this.categoryId &&
          other.note == this.note &&
          other.currencyCode == this.currencyCode &&
          other.currencySymbolNative == this.currencySymbolNative &&
          other.amount == this.amount &&
          other.amountInWalletCurrency == this.amountInWalletCurrency &&
          other.type == this.type &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncedAt == this.syncedAt);
}

class TransactionsCompanion extends UpdateCompanion<Transaction> {
  final Value<int?> id;
  final Value<DateTime?> date;
  final Value<int> walletId;
  final Value<int?> categoryId;
  final Value<String?> note;
  final Value<String> currencyCode;
  final Value<String> currencySymbolNative;
  final Value<double> amount;
  final Value<double?> amountInWalletCurrency;
  final Value<TransactionTypes> type;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> syncedAt;
  const TransactionsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.walletId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.note = const Value.absent(),
    this.currencyCode = const Value.absent(),
    this.currencySymbolNative = const Value.absent(),
    this.amount = const Value.absent(),
    this.amountInWalletCurrency = const Value.absent(),
    this.type = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  TransactionsCompanion.insert({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    required int walletId,
    this.categoryId = const Value.absent(),
    this.note = const Value.absent(),
    required String currencyCode,
    required String currencySymbolNative,
    this.amount = const Value.absent(),
    this.amountInWalletCurrency = const Value.absent(),
    required TransactionTypes type,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  })  : walletId = Value(walletId),
        currencyCode = Value(currencyCode),
        currencySymbolNative = Value(currencySymbolNative),
        type = Value(type);
  static Insertable<Transaction> custom({
    Expression<int?>? id,
    Expression<DateTime?>? date,
    Expression<int>? walletId,
    Expression<int?>? categoryId,
    Expression<String?>? note,
    Expression<String>? currencyCode,
    Expression<String>? currencySymbolNative,
    Expression<double>? amount,
    Expression<double?>? amountInWalletCurrency,
    Expression<TransactionTypes>? type,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
    Expression<DateTime?>? syncedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (walletId != null) 'wallet_id': walletId,
      if (categoryId != null) 'category_id': categoryId,
      if (note != null) 'note': note,
      if (currencyCode != null) 'currency_code': currencyCode,
      if (currencySymbolNative != null)
        'currency_symbol_native': currencySymbolNative,
      if (amount != null) 'amount': amount,
      if (amountInWalletCurrency != null)
        'amount_in_wallet_currency': amountInWalletCurrency,
      if (type != null) 'type': type,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncedAt != null) 'synced_at': syncedAt,
    });
  }

  TransactionsCompanion copyWith(
      {Value<int?>? id,
      Value<DateTime?>? date,
      Value<int>? walletId,
      Value<int?>? categoryId,
      Value<String?>? note,
      Value<String>? currencyCode,
      Value<String>? currencySymbolNative,
      Value<double>? amount,
      Value<double?>? amountInWalletCurrency,
      Value<TransactionTypes>? type,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? syncedAt}) {
    return TransactionsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      walletId: walletId ?? this.walletId,
      categoryId: categoryId ?? this.categoryId,
      note: note ?? this.note,
      currencyCode: currencyCode ?? this.currencyCode,
      currencySymbolNative: currencySymbolNative ?? this.currencySymbolNative,
      amount: amount ?? this.amount,
      amountInWalletCurrency:
          amountInWalletCurrency ?? this.amountInWalletCurrency,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime?>(date.value);
    }
    if (walletId.present) {
      map['wallet_id'] = Variable<int>(walletId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int?>(categoryId.value);
    }
    if (note.present) {
      map['note'] = Variable<String?>(note.value);
    }
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (currencySymbolNative.present) {
      map['currency_symbol_native'] =
          Variable<String>(currencySymbolNative.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (amountInWalletCurrency.present) {
      map['amount_in_wallet_currency'] =
          Variable<double?>(amountInWalletCurrency.value);
    }
    if (type.present) {
      final converter = $TransactionsTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type.value)!);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime?>(syncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TransactionsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('walletId: $walletId, ')
          ..write('categoryId: $categoryId, ')
          ..write('note: $note, ')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencySymbolNative: $currencySymbolNative, ')
          ..write('amount: $amount, ')
          ..write('amountInWalletCurrency: $amountInWalletCurrency, ')
          ..write('type: $type, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }
}

class $TransactionsTable extends Transactions
    with TableInfo<$TransactionsTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _walletIdMeta = const VerificationMeta('walletId');
  @override
  late final GeneratedColumn<int?> walletId = GeneratedColumn<int?>(
      'wallet_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES wallets(id)');
  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int?> categoryId = GeneratedColumn<int?>(
      'category_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NULL REFERENCES categories(id)');
  final VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String?> note = GeneratedColumn<String?>(
      'note', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String?> currencyCode = GeneratedColumn<String?>(
      'currency_code', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _currencySymbolNativeMeta =
      const VerificationMeta('currencySymbolNative');
  @override
  late final GeneratedColumn<String?> currencySymbolNative =
      GeneratedColumn<String?>('currency_symbol_native', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'amount', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _amountInWalletCurrencyMeta =
      const VerificationMeta('amountInWalletCurrency');
  @override
  late final GeneratedColumn<double?> amountInWalletCurrency =
      GeneratedColumn<double?>('amount_in_wallet_currency', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<TransactionTypes, int?> type =
      GeneratedColumn<int?>('type', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<TransactionTypes>($TransactionsTable.$converter0);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _syncedAtMeta = const VerificationMeta('syncedAt');
  @override
  late final GeneratedColumn<DateTime?> syncedAt = GeneratedColumn<DateTime?>(
      'synced_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        date,
        walletId,
        categoryId,
        note,
        currencyCode,
        currencySymbolNative,
        amount,
        amountInWalletCurrency,
        type,
        createdAt,
        updatedAt,
        syncedAt
      ];
  @override
  String get aliasedName => _alias ?? 'transactions';
  @override
  String get actualTableName => 'transactions';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('wallet_id')) {
      context.handle(_walletIdMeta,
          walletId.isAcceptableOrUnknown(data['wallet_id']!, _walletIdMeta));
    } else if (isInserting) {
      context.missing(_walletIdMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    } else if (isInserting) {
      context.missing(_currencyCodeMeta);
    }
    if (data.containsKey('currency_symbol_native')) {
      context.handle(
          _currencySymbolNativeMeta,
          currencySymbolNative.isAcceptableOrUnknown(
              data['currency_symbol_native']!, _currencySymbolNativeMeta));
    } else if (isInserting) {
      context.missing(_currencySymbolNativeMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('amount_in_wallet_currency')) {
      context.handle(
          _amountInWalletCurrencyMeta,
          amountInWalletCurrency.isAcceptableOrUnknown(
              data['amount_in_wallet_currency']!, _amountInWalletCurrencyMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('synced_at')) {
      context.handle(_syncedAtMeta,
          syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Transaction.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TransactionsTable createAlias(String alias) {
    return $TransactionsTable(attachedDatabase, alias);
  }

  static TypeConverter<TransactionTypes, int> $converter0 =
      const EnumIndexConverter<TransactionTypes>(TransactionTypes.values);
}

class CbRfRate extends DataClass implements Insertable<CbRfRate> {
  final String currencyCode;
  final String currencyId;
  final int nominal;
  final String? nameInRussian;
  final double value;
  final double previous;
  CbRfRate(
      {required this.currencyCode,
      required this.currencyId,
      required this.nominal,
      this.nameInRussian,
      required this.value,
      required this.previous});
  factory CbRfRate.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CbRfRate(
      currencyCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}currency_code'])!,
      currencyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}currency_id'])!,
      nominal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nominal'])!,
      nameInRussian: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name_in_russian']),
      value: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value'])!,
      previous: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}previous'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['currency_code'] = Variable<String>(currencyCode);
    map['currency_id'] = Variable<String>(currencyId);
    map['nominal'] = Variable<int>(nominal);
    if (!nullToAbsent || nameInRussian != null) {
      map['name_in_russian'] = Variable<String?>(nameInRussian);
    }
    map['value'] = Variable<double>(value);
    map['previous'] = Variable<double>(previous);
    return map;
  }

  CbRfRatesCompanion toCompanion(bool nullToAbsent) {
    return CbRfRatesCompanion(
      currencyCode: Value(currencyCode),
      currencyId: Value(currencyId),
      nominal: Value(nominal),
      nameInRussian: nameInRussian == null && nullToAbsent
          ? const Value.absent()
          : Value(nameInRussian),
      value: Value(value),
      previous: Value(previous),
    );
  }

  factory CbRfRate.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CbRfRate(
      currencyCode: serializer.fromJson<String>(json['currencyCode']),
      currencyId: serializer.fromJson<String>(json['currencyId']),
      nominal: serializer.fromJson<int>(json['nominal']),
      nameInRussian: serializer.fromJson<String?>(json['nameInRussian']),
      value: serializer.fromJson<double>(json['value']),
      previous: serializer.fromJson<double>(json['previous']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'currencyCode': serializer.toJson<String>(currencyCode),
      'currencyId': serializer.toJson<String>(currencyId),
      'nominal': serializer.toJson<int>(nominal),
      'nameInRussian': serializer.toJson<String?>(nameInRussian),
      'value': serializer.toJson<double>(value),
      'previous': serializer.toJson<double>(previous),
    };
  }

  CbRfRate copyWith(
          {String? currencyCode,
          String? currencyId,
          int? nominal,
          String? nameInRussian,
          double? value,
          double? previous}) =>
      CbRfRate(
        currencyCode: currencyCode ?? this.currencyCode,
        currencyId: currencyId ?? this.currencyId,
        nominal: nominal ?? this.nominal,
        nameInRussian: nameInRussian ?? this.nameInRussian,
        value: value ?? this.value,
        previous: previous ?? this.previous,
      );
  @override
  String toString() {
    return (StringBuffer('CbRfRate(')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencyId: $currencyId, ')
          ..write('nominal: $nominal, ')
          ..write('nameInRussian: $nameInRussian, ')
          ..write('value: $value, ')
          ..write('previous: $previous')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      currencyCode, currencyId, nominal, nameInRussian, value, previous);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CbRfRate &&
          other.currencyCode == this.currencyCode &&
          other.currencyId == this.currencyId &&
          other.nominal == this.nominal &&
          other.nameInRussian == this.nameInRussian &&
          other.value == this.value &&
          other.previous == this.previous);
}

class CbRfRatesCompanion extends UpdateCompanion<CbRfRate> {
  final Value<String> currencyCode;
  final Value<String> currencyId;
  final Value<int> nominal;
  final Value<String?> nameInRussian;
  final Value<double> value;
  final Value<double> previous;
  const CbRfRatesCompanion({
    this.currencyCode = const Value.absent(),
    this.currencyId = const Value.absent(),
    this.nominal = const Value.absent(),
    this.nameInRussian = const Value.absent(),
    this.value = const Value.absent(),
    this.previous = const Value.absent(),
  });
  CbRfRatesCompanion.insert({
    required String currencyCode,
    required String currencyId,
    this.nominal = const Value.absent(),
    this.nameInRussian = const Value.absent(),
    this.value = const Value.absent(),
    this.previous = const Value.absent(),
  })  : currencyCode = Value(currencyCode),
        currencyId = Value(currencyId);
  static Insertable<CbRfRate> custom({
    Expression<String>? currencyCode,
    Expression<String>? currencyId,
    Expression<int>? nominal,
    Expression<String?>? nameInRussian,
    Expression<double>? value,
    Expression<double>? previous,
  }) {
    return RawValuesInsertable({
      if (currencyCode != null) 'currency_code': currencyCode,
      if (currencyId != null) 'currency_id': currencyId,
      if (nominal != null) 'nominal': nominal,
      if (nameInRussian != null) 'name_in_russian': nameInRussian,
      if (value != null) 'value': value,
      if (previous != null) 'previous': previous,
    });
  }

  CbRfRatesCompanion copyWith(
      {Value<String>? currencyCode,
      Value<String>? currencyId,
      Value<int>? nominal,
      Value<String?>? nameInRussian,
      Value<double>? value,
      Value<double>? previous}) {
    return CbRfRatesCompanion(
      currencyCode: currencyCode ?? this.currencyCode,
      currencyId: currencyId ?? this.currencyId,
      nominal: nominal ?? this.nominal,
      nameInRussian: nameInRussian ?? this.nameInRussian,
      value: value ?? this.value,
      previous: previous ?? this.previous,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (currencyCode.present) {
      map['currency_code'] = Variable<String>(currencyCode.value);
    }
    if (currencyId.present) {
      map['currency_id'] = Variable<String>(currencyId.value);
    }
    if (nominal.present) {
      map['nominal'] = Variable<int>(nominal.value);
    }
    if (nameInRussian.present) {
      map['name_in_russian'] = Variable<String?>(nameInRussian.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    if (previous.present) {
      map['previous'] = Variable<double>(previous.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CbRfRatesCompanion(')
          ..write('currencyCode: $currencyCode, ')
          ..write('currencyId: $currencyId, ')
          ..write('nominal: $nominal, ')
          ..write('nameInRussian: $nameInRussian, ')
          ..write('value: $value, ')
          ..write('previous: $previous')
          ..write(')'))
        .toString();
  }
}

class $CbRfRatesTable extends CbRfRates
    with TableInfo<$CbRfRatesTable, CbRfRate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CbRfRatesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _currencyCodeMeta =
      const VerificationMeta('currencyCode');
  @override
  late final GeneratedColumn<String?> currencyCode = GeneratedColumn<String?>(
      'currency_code', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _currencyIdMeta = const VerificationMeta('currencyId');
  @override
  late final GeneratedColumn<String?> currencyId = GeneratedColumn<String?>(
      'currency_id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _nominalMeta = const VerificationMeta('nominal');
  @override
  late final GeneratedColumn<int?> nominal = GeneratedColumn<int?>(
      'nominal', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultValue: Constant(1));
  final VerificationMeta _nameInRussianMeta =
      const VerificationMeta('nameInRussian');
  @override
  late final GeneratedColumn<String?> nameInRussian = GeneratedColumn<String?>(
      'name_in_russian', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double?> value = GeneratedColumn<double?>(
      'value', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _previousMeta = const VerificationMeta('previous');
  @override
  late final GeneratedColumn<double?> previous = GeneratedColumn<double?>(
      'previous', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  @override
  List<GeneratedColumn> get $columns =>
      [currencyCode, currencyId, nominal, nameInRussian, value, previous];
  @override
  String get aliasedName => _alias ?? 'cb_rf_rates';
  @override
  String get actualTableName => 'cb_rf_rates';
  @override
  VerificationContext validateIntegrity(Insertable<CbRfRate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('currency_code')) {
      context.handle(
          _currencyCodeMeta,
          currencyCode.isAcceptableOrUnknown(
              data['currency_code']!, _currencyCodeMeta));
    } else if (isInserting) {
      context.missing(_currencyCodeMeta);
    }
    if (data.containsKey('currency_id')) {
      context.handle(
          _currencyIdMeta,
          currencyId.isAcceptableOrUnknown(
              data['currency_id']!, _currencyIdMeta));
    } else if (isInserting) {
      context.missing(_currencyIdMeta);
    }
    if (data.containsKey('nominal')) {
      context.handle(_nominalMeta,
          nominal.isAcceptableOrUnknown(data['nominal']!, _nominalMeta));
    }
    if (data.containsKey('name_in_russian')) {
      context.handle(
          _nameInRussianMeta,
          nameInRussian.isAcceptableOrUnknown(
              data['name_in_russian']!, _nameInRussianMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    if (data.containsKey('previous')) {
      context.handle(_previousMeta,
          previous.isAcceptableOrUnknown(data['previous']!, _previousMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {currencyCode};
  @override
  CbRfRate map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CbRfRate.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CbRfRatesTable createAlias(String alias) {
    return $CbRfRatesTable(attachedDatabase, alias);
  }
}

class ExchangeRate extends DataClass implements Insertable<ExchangeRate> {
  final String? id;
  final String base;
  final DateTime date;
  final DateTime? createdAt;
  final String rates;
  ExchangeRate(
      {this.id,
      required this.base,
      required this.date,
      this.createdAt,
      required this.rates});
  factory ExchangeRate.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ExchangeRate(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      base: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}base'])!,
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      rates: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}rates'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['base'] = Variable<String>(base);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    map['rates'] = Variable<String>(rates);
    return map;
  }

  ExchangeRatesCompanion toCompanion(bool nullToAbsent) {
    return ExchangeRatesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      base: Value(base),
      date: Value(date),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      rates: Value(rates),
    );
  }

  factory ExchangeRate.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExchangeRate(
      id: serializer.fromJson<String?>(json['id']),
      base: serializer.fromJson<String>(json['base']),
      date: serializer.fromJson<DateTime>(json['date']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      rates: serializer.fromJson<String>(json['rates']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'base': serializer.toJson<String>(base),
      'date': serializer.toJson<DateTime>(date),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'rates': serializer.toJson<String>(rates),
    };
  }

  ExchangeRate copyWith(
          {String? id,
          String? base,
          DateTime? date,
          DateTime? createdAt,
          String? rates}) =>
      ExchangeRate(
        id: id ?? this.id,
        base: base ?? this.base,
        date: date ?? this.date,
        createdAt: createdAt ?? this.createdAt,
        rates: rates ?? this.rates,
      );
  @override
  String toString() {
    return (StringBuffer('ExchangeRate(')
          ..write('id: $id, ')
          ..write('base: $base, ')
          ..write('date: $date, ')
          ..write('createdAt: $createdAt, ')
          ..write('rates: $rates')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, base, date, createdAt, rates);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExchangeRate &&
          other.id == this.id &&
          other.base == this.base &&
          other.date == this.date &&
          other.createdAt == this.createdAt &&
          other.rates == this.rates);
}

class ExchangeRatesCompanion extends UpdateCompanion<ExchangeRate> {
  final Value<String?> id;
  final Value<String> base;
  final Value<DateTime> date;
  final Value<DateTime?> createdAt;
  final Value<String> rates;
  const ExchangeRatesCompanion({
    this.id = const Value.absent(),
    this.base = const Value.absent(),
    this.date = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rates = const Value.absent(),
  });
  ExchangeRatesCompanion.insert({
    this.id = const Value.absent(),
    required String base,
    this.date = const Value.absent(),
    this.createdAt = const Value.absent(),
    required String rates,
  })  : base = Value(base),
        rates = Value(rates);
  static Insertable<ExchangeRate> custom({
    Expression<String?>? id,
    Expression<String>? base,
    Expression<DateTime>? date,
    Expression<DateTime?>? createdAt,
    Expression<String>? rates,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (base != null) 'base': base,
      if (date != null) 'date': date,
      if (createdAt != null) 'created_at': createdAt,
      if (rates != null) 'rates': rates,
    });
  }

  ExchangeRatesCompanion copyWith(
      {Value<String?>? id,
      Value<String>? base,
      Value<DateTime>? date,
      Value<DateTime?>? createdAt,
      Value<String>? rates}) {
    return ExchangeRatesCompanion(
      id: id ?? this.id,
      base: base ?? this.base,
      date: date ?? this.date,
      createdAt: createdAt ?? this.createdAt,
      rates: rates ?? this.rates,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (base.present) {
      map['base'] = Variable<String>(base.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (rates.present) {
      map['rates'] = Variable<String>(rates.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExchangeRatesCompanion(')
          ..write('id: $id, ')
          ..write('base: $base, ')
          ..write('date: $date, ')
          ..write('createdAt: $createdAt, ')
          ..write('rates: $rates')
          ..write(')'))
        .toString();
  }
}

class $ExchangeRatesTable extends ExchangeRates
    with TableInfo<$ExchangeRatesTable, ExchangeRate> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExchangeRatesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      clientDefault: () => _uuid.v4());
  final VerificationMeta _baseMeta = const VerificationMeta('base');
  @override
  late final GeneratedColumn<String?> base = GeneratedColumn<String?>(
      'base', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _ratesMeta = const VerificationMeta('rates');
  @override
  late final GeneratedColumn<String?> rates =
      GeneratedColumn<String?>('rates', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: const StringType(),
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, base, date, createdAt, rates];
  @override
  String get aliasedName => _alias ?? 'exchange_rates';
  @override
  String get actualTableName => 'exchange_rates';
  @override
  VerificationContext validateIntegrity(Insertable<ExchangeRate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('base')) {
      context.handle(
          _baseMeta, base.isAcceptableOrUnknown(data['base']!, _baseMeta));
    } else if (isInserting) {
      context.missing(_baseMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('rates')) {
      context.handle(
          _ratesMeta, rates.isAcceptableOrUnknown(data['rates']!, _ratesMeta));
    } else if (isInserting) {
      context.missing(_ratesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {base};
  @override
  ExchangeRate map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ExchangeRate.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ExchangeRatesTable createAlias(String alias) {
    return $ExchangeRatesTable(attachedDatabase, alias);
  }
}

class Categorie extends DataClass implements Insertable<Categorie> {
  final int? id;
  final String title;
  final bool? isDefault;
  final CategoryTypes type;
  final String color;
  final String icon;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;
  Categorie(
      {this.id,
      required this.title,
      this.isDefault,
      required this.type,
      required this.color,
      required this.icon,
      this.createdAt,
      this.updatedAt,
      this.syncedAt});
  factory Categorie.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Categorie(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      isDefault: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_default']),
      type: $CategoriesTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type']))!,
      color: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}color'])!,
      icon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      syncedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}synced_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int?>(id);
    }
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || isDefault != null) {
      map['is_default'] = Variable<bool?>(isDefault);
    }
    {
      final converter = $CategoriesTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type)!);
    }
    map['color'] = Variable<String>(color);
    map['icon'] = Variable<String>(icon);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    if (!nullToAbsent || syncedAt != null) {
      map['synced_at'] = Variable<DateTime?>(syncedAt);
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title: Value(title),
      isDefault: isDefault == null && nullToAbsent
          ? const Value.absent()
          : Value(isDefault),
      type: Value(type),
      color: Value(color),
      icon: Value(icon),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      syncedAt: syncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(syncedAt),
    );
  }

  factory Categorie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Categorie(
      id: serializer.fromJson<int?>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      isDefault: serializer.fromJson<bool?>(json['isDefault']),
      type: serializer.fromJson<CategoryTypes>(json['type']),
      color: serializer.fromJson<String>(json['color']),
      icon: serializer.fromJson<String>(json['icon']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      syncedAt: serializer.fromJson<DateTime?>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'title': serializer.toJson<String>(title),
      'isDefault': serializer.toJson<bool?>(isDefault),
      'type': serializer.toJson<CategoryTypes>(type),
      'color': serializer.toJson<String>(color),
      'icon': serializer.toJson<String>(icon),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'syncedAt': serializer.toJson<DateTime?>(syncedAt),
    };
  }

  Categorie copyWith(
          {int? id,
          String? title,
          bool? isDefault,
          CategoryTypes? type,
          String? color,
          String? icon,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? syncedAt}) =>
      Categorie(
        id: id ?? this.id,
        title: title ?? this.title,
        isDefault: isDefault ?? this.isDefault,
        type: type ?? this.type,
        color: color ?? this.color,
        icon: icon ?? this.icon,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncedAt: syncedAt ?? this.syncedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Categorie(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('isDefault: $isDefault, ')
          ..write('type: $type, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, isDefault, type, color, icon, createdAt, updatedAt, syncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Categorie &&
          other.id == this.id &&
          other.title == this.title &&
          other.isDefault == this.isDefault &&
          other.type == this.type &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncedAt == this.syncedAt);
}

class CategoriesCompanion extends UpdateCompanion<Categorie> {
  final Value<int?> id;
  final Value<String> title;
  final Value<bool?> isDefault;
  final Value<CategoryTypes> type;
  final Value<String> color;
  final Value<String> icon;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> syncedAt;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.type = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.isDefault = const Value.absent(),
    required CategoryTypes type,
    required String color,
    required String icon,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  })  : title = Value(title),
        type = Value(type),
        color = Value(color),
        icon = Value(icon);
  static Insertable<Categorie> custom({
    Expression<int?>? id,
    Expression<String>? title,
    Expression<bool?>? isDefault,
    Expression<CategoryTypes>? type,
    Expression<String>? color,
    Expression<String>? icon,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
    Expression<DateTime?>? syncedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (isDefault != null) 'is_default': isDefault,
      if (type != null) 'type': type,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncedAt != null) 'synced_at': syncedAt,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int?>? id,
      Value<String>? title,
      Value<bool?>? isDefault,
      Value<CategoryTypes>? type,
      Value<String>? color,
      Value<String>? icon,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? syncedAt}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      isDefault: isDefault ?? this.isDefault,
      type: type ?? this.type,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int?>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool?>(isDefault.value);
    }
    if (type.present) {
      final converter = $CategoriesTable.$converter0;
      map['type'] = Variable<int>(converter.mapToSql(type.value)!);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime?>(syncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('isDefault: $isDefault, ')
          ..write('type: $type, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Categorie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isDefaultMeta = const VerificationMeta('isDefault');
  @override
  late final GeneratedColumn<bool?> isDefault = GeneratedColumn<bool?>(
      'is_default', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_default IN (0, 1))',
      clientDefault: () => false);
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<CategoryTypes, int?> type =
      GeneratedColumn<int?>('type', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<CategoryTypes>($CategoriesTable.$converter0);
  final VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String?> color = GeneratedColumn<String?>(
      'color', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String?> icon = GeneratedColumn<String?>(
      'icon', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _syncedAtMeta = const VerificationMeta('syncedAt');
  @override
  late final GeneratedColumn<DateTime?> syncedAt = GeneratedColumn<DateTime?>(
      'synced_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, isDefault, type, color, icon, createdAt, updatedAt, syncedAt];
  @override
  String get aliasedName => _alias ?? 'categories';
  @override
  String get actualTableName => 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Categorie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(_isDefaultMeta,
          isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));
    }
    context.handle(_typeMeta, const VerificationResult.success());
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    } else if (isInserting) {
      context.missing(_iconMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('synced_at')) {
      context.handle(_syncedAtMeta,
          syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Categorie map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Categorie.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }

  static TypeConverter<CategoryTypes, int> $converter0 =
      const EnumIndexConverter<CategoryTypes>(CategoryTypes.values);
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? authToken;
  final String? photoUrl;
  final String? homeCurrency;
  final String? locale;
  final int? selectedWalletId;
  final bool? selectedAllWallets;
  final DateTime? selectedDate;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;
  User(
      {required this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.authToken,
      this.photoUrl,
      this.homeCurrency,
      this.locale,
      this.selectedWalletId,
      this.selectedAllWallets,
      this.selectedDate,
      this.createdAt,
      this.updatedAt,
      this.syncedAt});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name']),
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email']),
      authToken: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auth_token']),
      photoUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}photo_url']),
      homeCurrency: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}home_currency']),
      locale: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}locale']),
      selectedWalletId: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}selected_wallet_id']),
      selectedAllWallets: const BoolType().mapFromDatabaseResponse(
          data['${effectivePrefix}selected_all_wallets']),
      selectedDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}selected_date']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      syncedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}synced_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String?>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String?>(lastName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String?>(email);
    }
    if (!nullToAbsent || authToken != null) {
      map['auth_token'] = Variable<String?>(authToken);
    }
    if (!nullToAbsent || photoUrl != null) {
      map['photo_url'] = Variable<String?>(photoUrl);
    }
    if (!nullToAbsent || homeCurrency != null) {
      map['home_currency'] = Variable<String?>(homeCurrency);
    }
    if (!nullToAbsent || locale != null) {
      map['locale'] = Variable<String?>(locale);
    }
    if (!nullToAbsent || selectedWalletId != null) {
      map['selected_wallet_id'] = Variable<int?>(selectedWalletId);
    }
    if (!nullToAbsent || selectedAllWallets != null) {
      map['selected_all_wallets'] = Variable<bool?>(selectedAllWallets);
    }
    if (!nullToAbsent || selectedDate != null) {
      map['selected_date'] = Variable<DateTime?>(selectedDate);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime?>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime?>(updatedAt);
    }
    if (!nullToAbsent || syncedAt != null) {
      map['synced_at'] = Variable<DateTime?>(syncedAt);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      authToken: authToken == null && nullToAbsent
          ? const Value.absent()
          : Value(authToken),
      photoUrl: photoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(photoUrl),
      homeCurrency: homeCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(homeCurrency),
      locale:
          locale == null && nullToAbsent ? const Value.absent() : Value(locale),
      selectedWalletId: selectedWalletId == null && nullToAbsent
          ? const Value.absent()
          : Value(selectedWalletId),
      selectedAllWallets: selectedAllWallets == null && nullToAbsent
          ? const Value.absent()
          : Value(selectedAllWallets),
      selectedDate: selectedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(selectedDate),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      syncedAt: syncedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(syncedAt),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      email: serializer.fromJson<String?>(json['email']),
      authToken: serializer.fromJson<String?>(json['authToken']),
      photoUrl: serializer.fromJson<String?>(json['photoUrl']),
      homeCurrency: serializer.fromJson<String?>(json['homeCurrency']),
      locale: serializer.fromJson<String?>(json['locale']),
      selectedWalletId: serializer.fromJson<int?>(json['selectedWalletId']),
      selectedAllWallets:
          serializer.fromJson<bool?>(json['selectedAllWallets']),
      selectedDate: serializer.fromJson<DateTime?>(json['selectedDate']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      syncedAt: serializer.fromJson<DateTime?>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'email': serializer.toJson<String?>(email),
      'authToken': serializer.toJson<String?>(authToken),
      'photoUrl': serializer.toJson<String?>(photoUrl),
      'homeCurrency': serializer.toJson<String?>(homeCurrency),
      'locale': serializer.toJson<String?>(locale),
      'selectedWalletId': serializer.toJson<int?>(selectedWalletId),
      'selectedAllWallets': serializer.toJson<bool?>(selectedAllWallets),
      'selectedDate': serializer.toJson<DateTime?>(selectedDate),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'syncedAt': serializer.toJson<DateTime?>(syncedAt),
    };
  }

  User copyWith(
          {int? id,
          String? firstName,
          String? lastName,
          String? email,
          String? authToken,
          String? photoUrl,
          String? homeCurrency,
          String? locale,
          int? selectedWalletId,
          bool? selectedAllWallets,
          DateTime? selectedDate,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? syncedAt}) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        authToken: authToken ?? this.authToken,
        photoUrl: photoUrl ?? this.photoUrl,
        homeCurrency: homeCurrency ?? this.homeCurrency,
        locale: locale ?? this.locale,
        selectedWalletId: selectedWalletId ?? this.selectedWalletId,
        selectedAllWallets: selectedAllWallets ?? this.selectedAllWallets,
        selectedDate: selectedDate ?? this.selectedDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        syncedAt: syncedAt ?? this.syncedAt,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('authToken: $authToken, ')
          ..write('photoUrl: $photoUrl, ')
          ..write('homeCurrency: $homeCurrency, ')
          ..write('locale: $locale, ')
          ..write('selectedWalletId: $selectedWalletId, ')
          ..write('selectedAllWallets: $selectedAllWallets, ')
          ..write('selectedDate: $selectedDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      firstName,
      lastName,
      email,
      authToken,
      photoUrl,
      homeCurrency,
      locale,
      selectedWalletId,
      selectedAllWallets,
      selectedDate,
      createdAt,
      updatedAt,
      syncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.authToken == this.authToken &&
          other.photoUrl == this.photoUrl &&
          other.homeCurrency == this.homeCurrency &&
          other.locale == this.locale &&
          other.selectedWalletId == this.selectedWalletId &&
          other.selectedAllWallets == this.selectedAllWallets &&
          other.selectedDate == this.selectedDate &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.syncedAt == this.syncedAt);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> email;
  final Value<String?> authToken;
  final Value<String?> photoUrl;
  final Value<String?> homeCurrency;
  final Value<String?> locale;
  final Value<int?> selectedWalletId;
  final Value<bool?> selectedAllWallets;
  final Value<DateTime?> selectedDate;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> syncedAt;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.authToken = const Value.absent(),
    this.photoUrl = const Value.absent(),
    this.homeCurrency = const Value.absent(),
    this.locale = const Value.absent(),
    this.selectedWalletId = const Value.absent(),
    this.selectedAllWallets = const Value.absent(),
    this.selectedDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.authToken = const Value.absent(),
    this.photoUrl = const Value.absent(),
    this.homeCurrency = const Value.absent(),
    this.locale = const Value.absent(),
    this.selectedWalletId = const Value.absent(),
    this.selectedAllWallets = const Value.absent(),
    this.selectedDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String?>? firstName,
    Expression<String?>? lastName,
    Expression<String?>? email,
    Expression<String?>? authToken,
    Expression<String?>? photoUrl,
    Expression<String?>? homeCurrency,
    Expression<String?>? locale,
    Expression<int?>? selectedWalletId,
    Expression<bool?>? selectedAllWallets,
    Expression<DateTime?>? selectedDate,
    Expression<DateTime?>? createdAt,
    Expression<DateTime?>? updatedAt,
    Expression<DateTime?>? syncedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (authToken != null) 'auth_token': authToken,
      if (photoUrl != null) 'photo_url': photoUrl,
      if (homeCurrency != null) 'home_currency': homeCurrency,
      if (locale != null) 'locale': locale,
      if (selectedWalletId != null) 'selected_wallet_id': selectedWalletId,
      if (selectedAllWallets != null)
        'selected_all_wallets': selectedAllWallets,
      if (selectedDate != null) 'selected_date': selectedDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (syncedAt != null) 'synced_at': syncedAt,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String?>? firstName,
      Value<String?>? lastName,
      Value<String?>? email,
      Value<String?>? authToken,
      Value<String?>? photoUrl,
      Value<String?>? homeCurrency,
      Value<String?>? locale,
      Value<int?>? selectedWalletId,
      Value<bool?>? selectedAllWallets,
      Value<DateTime?>? selectedDate,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? syncedAt}) {
    return UsersCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      authToken: authToken ?? this.authToken,
      photoUrl: photoUrl ?? this.photoUrl,
      homeCurrency: homeCurrency ?? this.homeCurrency,
      locale: locale ?? this.locale,
      selectedWalletId: selectedWalletId ?? this.selectedWalletId,
      selectedAllWallets: selectedAllWallets ?? this.selectedAllWallets,
      selectedDate: selectedDate ?? this.selectedDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String?>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String?>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String?>(email.value);
    }
    if (authToken.present) {
      map['auth_token'] = Variable<String?>(authToken.value);
    }
    if (photoUrl.present) {
      map['photo_url'] = Variable<String?>(photoUrl.value);
    }
    if (homeCurrency.present) {
      map['home_currency'] = Variable<String?>(homeCurrency.value);
    }
    if (locale.present) {
      map['locale'] = Variable<String?>(locale.value);
    }
    if (selectedWalletId.present) {
      map['selected_wallet_id'] = Variable<int?>(selectedWalletId.value);
    }
    if (selectedAllWallets.present) {
      map['selected_all_wallets'] = Variable<bool?>(selectedAllWallets.value);
    }
    if (selectedDate.present) {
      map['selected_date'] = Variable<DateTime?>(selectedDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime?>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime?>(updatedAt.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime?>(syncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('authToken: $authToken, ')
          ..write('photoUrl: $photoUrl, ')
          ..write('homeCurrency: $homeCurrency, ')
          ..write('locale: $locale, ')
          ..write('selectedWalletId: $selectedWalletId, ')
          ..write('selectedAllWallets: $selectedAllWallets, ')
          ..write('selectedDate: $selectedDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String?> firstName = GeneratedColumn<String?>(
      'first_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String?> lastName = GeneratedColumn<String?>(
      'last_name', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _authTokenMeta = const VerificationMeta('authToken');
  @override
  late final GeneratedColumn<String?> authToken = GeneratedColumn<String?>(
      'auth_token', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _photoUrlMeta = const VerificationMeta('photoUrl');
  @override
  late final GeneratedColumn<String?> photoUrl = GeneratedColumn<String?>(
      'photo_url', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _homeCurrencyMeta =
      const VerificationMeta('homeCurrency');
  @override
  late final GeneratedColumn<String?> homeCurrency = GeneratedColumn<String?>(
      'home_currency', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _localeMeta = const VerificationMeta('locale');
  @override
  late final GeneratedColumn<String?> locale = GeneratedColumn<String?>(
      'locale', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _selectedWalletIdMeta =
      const VerificationMeta('selectedWalletId');
  @override
  late final GeneratedColumn<int?> selectedWalletId = GeneratedColumn<int?>(
      'selected_wallet_id', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _selectedAllWalletsMeta =
      const VerificationMeta('selectedAllWallets');
  @override
  late final GeneratedColumn<bool?> selectedAllWallets = GeneratedColumn<bool?>(
      'selected_all_wallets', aliasedName, true,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (selected_all_wallets IN (0, 1))',
      clientDefault: () => false);
  final VerificationMeta _selectedDateMeta =
      const VerificationMeta('selectedDate');
  @override
  late final GeneratedColumn<DateTime?> selectedDate =
      GeneratedColumn<DateTime?>('selected_date', aliasedName, true,
          type: const IntType(),
          requiredDuringInsert: false,
          clientDefault: () => DateTime.now());
  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime?> createdAt = GeneratedColumn<DateTime?>(
      'created_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime?> updatedAt = GeneratedColumn<DateTime?>(
      'updated_at', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  final VerificationMeta _syncedAtMeta = const VerificationMeta('syncedAt');
  @override
  late final GeneratedColumn<DateTime?> syncedAt = GeneratedColumn<DateTime?>(
      'synced_at', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstName,
        lastName,
        email,
        authToken,
        photoUrl,
        homeCurrency,
        locale,
        selectedWalletId,
        selectedAllWallets,
        selectedDate,
        createdAt,
        updatedAt,
        syncedAt
      ];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('auth_token')) {
      context.handle(_authTokenMeta,
          authToken.isAcceptableOrUnknown(data['auth_token']!, _authTokenMeta));
    }
    if (data.containsKey('photo_url')) {
      context.handle(_photoUrlMeta,
          photoUrl.isAcceptableOrUnknown(data['photo_url']!, _photoUrlMeta));
    }
    if (data.containsKey('home_currency')) {
      context.handle(
          _homeCurrencyMeta,
          homeCurrency.isAcceptableOrUnknown(
              data['home_currency']!, _homeCurrencyMeta));
    }
    if (data.containsKey('locale')) {
      context.handle(_localeMeta,
          locale.isAcceptableOrUnknown(data['locale']!, _localeMeta));
    }
    if (data.containsKey('selected_wallet_id')) {
      context.handle(
          _selectedWalletIdMeta,
          selectedWalletId.isAcceptableOrUnknown(
              data['selected_wallet_id']!, _selectedWalletIdMeta));
    }
    if (data.containsKey('selected_all_wallets')) {
      context.handle(
          _selectedAllWalletsMeta,
          selectedAllWallets.isAcceptableOrUnknown(
              data['selected_all_wallets']!, _selectedAllWalletsMeta));
    }
    if (data.containsKey('selected_date')) {
      context.handle(
          _selectedDateMeta,
          selectedDate.isAcceptableOrUnknown(
              data['selected_date']!, _selectedDateMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('synced_at')) {
      context.handle(_syncedAtMeta,
          syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $WalletsTable wallets = $WalletsTable(this);
  late final $TransactionsTable transactions = $TransactionsTable(this);
  late final $CbRfRatesTable cbRfRates = $CbRfRatesTable(this);
  late final $ExchangeRatesTable exchangeRates = $ExchangeRatesTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final TransactionDao transactionDao = TransactionDao(this as MyDatabase);
  late final WalletDao walletDao = WalletDao(this as MyDatabase);
  late final CbRfRatesDao cbRfRatesDao = CbRfRatesDao(this as MyDatabase);
  late final ExchangeRatesDao exchangeRatesDao =
      ExchangeRatesDao(this as MyDatabase);
  late final CategoriesDao categoriesDao = CategoriesDao(this as MyDatabase);
  late final UserDao userDao = UserDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [wallets, transactions, cbRfRates, exchangeRates, categories, users];
}
