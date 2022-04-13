import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:budget_nerd/core/error/failures.dart';

abstract class UseCaseStream<Type, Params> {
  Either<Failure, Stream<Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
