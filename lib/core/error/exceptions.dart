class ServerException implements Exception {
  final String message;

  const ServerException([this.message = '']);

  @override
  String toString() => 'Server error code: $message';
}

class GoogleSignInException implements Exception {
  final String message;

  const GoogleSignInException([this.message = '']);

  @override
  String toString() => '$message';
}
