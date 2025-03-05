class AuthException implements Exception {
  String message;
  AuthException([this.message = 'Something went wrong']) {
    message = 'Auth Exception: $message';
  }

  @override
  String toString() {
    return message;
  }
}
