import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:budget_nerd/features/currencies/data/models/currency_model.dart';

abstract class CurrenciesLocalDataSource {
  Future<List<CurrencyModel>> getCurrencies();
}

class CurrenciesLocalDataSourceImpl implements CurrenciesLocalDataSource {
  CurrenciesLocalDataSourceImpl();

  @override
  Future<List<CurrencyModel>> getCurrencies() async {
    final currenciesJson =
        await rootBundle.loadString('assets/utils/currencies_list.json');

    final currencies = (json.decode(currenciesJson)['currencies'] as List);

    var currencyModels = currencies
        .map((currencyJson) =>
            CurrencyModel.fromJson(currencyJson as Map<String, dynamic>))
        .toList();

    return Future.value(currencyModels);
  }
}
