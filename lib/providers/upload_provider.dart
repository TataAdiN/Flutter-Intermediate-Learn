import 'package:flutter/material.dart';

import '../data/apis/api_service.dart';
import '../data/models/upload_response.dart';

class UploadProvider extends ChangeNotifier {
  bool isUploading = false;
  String message = "";
  UploadResponse? uploadResponse;

  final ApiService apiService;
  UploadProvider(this.apiService);

  Future<void> upload(
    List<int> bytes,
    String fileName,
    String description,
  ) async {
    try {
      message = "";
      uploadResponse = null;
      isUploading = true;
      notifyListeners();
      uploadResponse =
          await apiService.uploadDocument(bytes, fileName, description);
      message = uploadResponse?.message ?? "success";
      isUploading = false;
      notifyListeners();
    } catch (e) {
      isUploading = false;
      message = e.toString();
      notifyListeners();
    }
  }
}
