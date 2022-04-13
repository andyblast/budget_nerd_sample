// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      syncedAt: json['syncedAt'] == null
          ? null
          : DateTime.parse(json['syncedAt'] as String),
      icon: json['icon'] as String,
      color: json['color'] as String,
      type: $enumDecode(_$CategoryTypesEnumMap, json['type']),
      title: json['title'] as String,
      isDefault: json['isDefault'] as bool?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['title'] = instance.title;
  writeNotNull('isDefault', instance.isDefault);
  val['color'] = instance.color;
  val['type'] = _$CategoryTypesEnumMap[instance.type];
  val['icon'] = instance.icon;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('syncedAt', instance.syncedAt?.toIso8601String());
  return val;
}

const _$CategoryTypesEnumMap = {
  CategoryTypes.income: 'income',
  CategoryTypes.expense: 'expense',
};
