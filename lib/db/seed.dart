import 'package:budget_nerd/db/moor.dart';
import 'package:budget_nerd/db/tables/tables.dart';

var defaultUser = User(
  id: 0,
  createdAt: DateTime.now(),
  updatedAt: DateTime.now(),
  selectedDate: DateTime.now(),
  homeCurrency: 'RUB',
  locale: 'RU',
);

var defaultCategories = [
  Categorie(
    id: 0,
    title: 'Groceries',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'BLUE_GREY',
    icon: 'groceries',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 1,
    title: 'Restaurants',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'DEEP_PURPLE',
    icon: 'restaurant',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 2,
    title: 'Transport',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'BROWN',
    icon: 'bus',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 3,
    title: 'Shopping',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'MINT',
    icon: 'shopping',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 4,
    title: 'Health',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'GREEN',
    icon: 'pharm',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 5,
    title: 'Personal',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'LIGHT_BLUE',
    icon: 'face',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 6,
    title: 'Leisure',
    isDefault: true,
    type: CategoryTypes.expense,
    color: 'LIGHT_PINK',
    icon: 'umbrella',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
  Categorie(
    id: 7,
    title: 'Salary',
    isDefault: true,
    type: CategoryTypes.income,
    color: 'TEAL',
    icon: 'cash',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
];
