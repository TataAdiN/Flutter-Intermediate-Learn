import 'dart:convert';

import 'package:flutter/services.dart';

import 'asset_response.dart';

class AssetService {
  Future<AssetResponse> getQuotes() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final dataString = await rootBundle.loadString("assets/quotes.json");
      return AssetResponse.fromJson(
        jsonDecode(dataString),
      );
    } catch (e) {
      throw Exception("Get quotes error");
    }
  }
}
