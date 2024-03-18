import 'dart:io';

class FileSize {
  static double of(File file) {
    int sizeInBytes = file.lengthSync();
    double sizeInMb = sizeInBytes / (1024 * 1024);
    //force for only 2 digit decimal
    return double.parse(
      sizeInMb.toStringAsFixed(2),
    );
  }
}
