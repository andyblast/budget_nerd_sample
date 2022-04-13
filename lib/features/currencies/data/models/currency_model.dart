import 'package:equatable/equatable.dart';

class CurrencyModel extends Equatable {
  final String code;
  final String name;
  final String symbolNative;
  final String symbol;
  final String emoji;

  CurrencyModel({
    required this.code,
    required this.name,
    required this.symbolNative,
    required this.symbol,
    required this.emoji,
  });

  @override
  List<Object> get props => [code];

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      code: json['code'] as String,
      name: json['name'] as String,
      symbolNative: json['symbol_native'] as String,
      symbol: json['symbol'] as String,
      emoji: json['emoji'] as String,
    );
  }
}
