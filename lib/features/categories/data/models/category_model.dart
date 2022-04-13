import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/tables/tables.dart';

part 'category_model.g.dart';

@JsonSerializable(includeIfNull: false)
class CategoryModel extends Equatable {
  final int? id;
  final String title;
  final bool? isDefault;
  final String color;
  final CategoryTypes type;
  final String icon;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;

  CategoryModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.syncedAt,
    required this.icon,
    required this.color,
    required this.type,
    required this.title,
    this.isDefault,
  });

  @override
  List<Object?> get props => [id, title, type, icon];

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  factory CategoryModel.fromMoor(Categorie category) {
    // if (category == null) return null;
    return CategoryModel(
      id: category.id,
      title: category.title,
      isDefault: category.isDefault,
      color: category.color,
      type: category.type,
      icon: category.icon,
      createdAt: category.createdAt,
      updatedAt: category.updatedAt,
      syncedAt: category.syncedAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id.toString(),
      'title': title,
      'default': isDefault.toString(),
      'type': type == CategoryTypes.income ? 'income' : 'expense',
      'color': color,
      'icon': icon,
      'updated_at': updatedAt.toString(),
    };
  }

  Categorie toMoor() {
    return Categorie(
      id: id,
      title: title,
      isDefault: isDefault,
      color: color,
      type: type,
      icon: icon,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncedAt: syncedAt,
    );
  }

  CategoryModel copyWith({id, title, type, icon, color, updatedAt, syncedAt}) {
    return CategoryModel(
      id: id ?? this.id,
      title: title ?? this.title,
      isDefault: isDefault,
      color: color ?? this.color,
      type: type ?? this.type,
      icon: icon ?? this.icon,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }
}
