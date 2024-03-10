class BadRequestException implements Exception {
  String message;
  BadRequestException({required this.message});
}
