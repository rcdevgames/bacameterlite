class UnauthorizedException implements Exception {
  final String message;

  UnauthorizedException([this.message]);

  String toString() {
    if (message == null) return "Sesi anda sudah habis, silakan login kembali!";
    return "Exception: $message";
  }
}
