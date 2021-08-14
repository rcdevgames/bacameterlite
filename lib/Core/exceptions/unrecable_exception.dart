class UnrecableException implements Exception {
  final String message;

  UnrecableException([this.message]);

  String toString() {
    if (message == null) return "Anda tidak terhubung ke jaringan!";
    return "Exception: $message";
  }
}
