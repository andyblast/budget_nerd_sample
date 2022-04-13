import 'package:equatable/equatable.dart';
import 'package:budget_nerd/db/moor.dart';

class UserModel extends Equatable {
  final int id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? authToken;
  final String? photoUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? syncedAt;
  final String? homeCurrency;
  final String? locale;
  final int? selectedWalletId;
  final bool? selectedAllWallets;
  final DateTime? selectedDate;

  bool get isAuthenticated => (email != null) && (authToken != null);
  UserModel get emptyUser => UserModel(
        id: id,
        firstName: null,
        lastName: null,
        email: null,
        authToken: null,
        photoUrl: null,
        createdAt: createdAt,
        updatedAt: updatedAt,
        syncedAt: syncedAt,
        homeCurrency: homeCurrency,
        locale: locale,
        selectedWalletId: selectedWalletId,
        selectedAllWallets: selectedAllWallets,
        selectedDate: selectedDate,
      );

  UserModel({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.authToken,
    this.photoUrl,
    this.createdAt,
    this.updatedAt,
    this.syncedAt,
    this.homeCurrency,
    this.locale,
    this.selectedWalletId,
    this.selectedDate,
    this.selectedAllWallets,
  });

  @override
  List<Object?> get props => [id, email, authToken];

  factory UserModel.fromMoor(User user) {
    // if (user == null) return null;
    return UserModel(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
      authToken: user.authToken,
      photoUrl: user.photoUrl,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
      syncedAt: user.syncedAt,
      homeCurrency: user.homeCurrency,
      locale: user.locale,
      selectedWalletId: user.selectedWalletId,
      selectedAllWallets: user.selectedAllWallets,
      selectedDate: user.selectedDate,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final serverToken = json['token'];
    final userAttributes = json['data']['attributes'];
    return UserModel(
      id: userAttributes['id'] as int,
      firstName: userAttributes['first_name'],
      lastName: userAttributes['last_name'],
      email: userAttributes['email'],
      authToken: serverToken,
      photoUrl: userAttributes['avatar_url'],
      locale: userAttributes['locale'],
      homeCurrency: userAttributes['home_currency'],
    );
  }

  User toMoor() {
    return User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      authToken: authToken,
      photoUrl: photoUrl,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncedAt: syncedAt,
      homeCurrency: homeCurrency,
      locale: locale,
      selectedWalletId: selectedWalletId,
      selectedAllWallets: selectedAllWallets,
      selectedDate: selectedDate,
    );
  }

  UserModel copyWith({
    id,
    firstName,
    lastName,
    email,
    authToken,
    photoUrl,
    updatedAt,
    syncedAt,
    createdAt,
    homeCurrency,
    locale,
    selectedWalletId,
    selectedAllWallets,
    selectedDate,
  }) {
    return UserModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      authToken: authToken ?? this.authToken,
      photoUrl: photoUrl ?? this.photoUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      syncedAt: syncedAt ?? this.syncedAt,
      homeCurrency: homeCurrency ?? this.homeCurrency,
      locale: locale ?? this.locale,
      selectedWalletId:
          (selectedWalletId == null) ? null : selectedWalletId as int,
      selectedDate: selectedDate ?? this.selectedDate,
      // (selectedDate == null) ? null : selectedDate as DateTime,
      selectedAllWallets: selectedAllWallets ?? this.selectedAllWallets,
    );
  }
}
