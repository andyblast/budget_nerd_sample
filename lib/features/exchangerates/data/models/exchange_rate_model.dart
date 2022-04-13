import 'package:equatable/equatable.dart';
import 'dart:convert';
import 'package:budget_nerd/db/moor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'exchange_rate_model.g.dart';

@JsonSerializable(includeIfNull: false)
class ExchangeRateModel extends Equatable {
  final String? id;
  final String base;
  final DateTime date;
  final DateTime? createdAt;
  final Map<String, double?> rates;

  ExchangeRateModel({
    this.id,
    required this.date,
    required this.base,
    required this.rates,
    this.createdAt,
  });

  @override
  List<Object> get props => [id ?? ''];

  factory ExchangeRateModel.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateModelFromJson(json);
  Map<String, dynamic> toJson() => _$ExchangeRateModelToJson(this);

  factory ExchangeRateModel.fromMoor(ExchangeRate rate) {
    var rates = (jsonDecode(rate.rates) as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    );
    return ExchangeRateModel(
      id: rate.id,
      date: rate.date,
      base: rate.base,
      rates: rates,
      createdAt: rate.createdAt,
    );
  }

  ExchangeRate toMoor() {
    return ExchangeRate(
      createdAt: createdAt,
      id: id,
      date: date,
      base: base,
      rates: jsonEncode(rates),
    );
  }
}
