import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';
import 'package:budget_nerd/core/usecases/usecase_stream.dart';
import 'package:budget_nerd/features/wallets/data/index.dart';
import 'package:budget_nerd/features/wallets/domain/index.dart';

class WatchWalletByIdUseCase
    implements UseCaseStream<WalletModel?, WatchWalletByIdUseCaseParams> {
  final WalletsRepository repository;

  WatchWalletByIdUseCase(this.repository);

  @override
  Either<Failure, Stream<WalletModel?>> call(
      WatchWalletByIdUseCaseParams params) {
    return repository.watchWalletById(params.walletId);
  }
}

class WatchWalletByIdUseCaseParams extends Equatable {
  final int walletId;

  WatchWalletByIdUseCaseParams({required this.walletId});
  @override
  List<Object> get props => [walletId];
}
