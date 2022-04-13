import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  Failure(this.message);
  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  final String code;

  ServerFailure(this.code) : super('=====SERVER ERROR: $code=====');
}

class GoogleSignInFailure extends Failure {
  GoogleSignInFailure() : super('=====GOOGLE AUTH FAILURE======');
}

class NetworkFailure extends Failure {
  NetworkFailure() : super('=====NO CONNECTION======');
}

class EmptyDataFailure extends Failure {
  EmptyDataFailure() : super('=====EMPTY DATA FAILURE======');
}
