import 'package:flutter/material.dart';

import 'asset_service.dart';
import 'loading_state.dart';
import 'quote.dart';

class AssetProvider extends ChangeNotifier {
  final AssetService assetService;

  AssetProvider(this.assetService);

  LoadingState quotesState = const LoadingState.initial();

  Future<void> getQuotes() async {
    try {
      quotesState = const LoadingState.loading();
      notifyListeners();

      final result = await assetService.getQuotes();

      quotesState = LoadingState.loaded(result.list);

      notifyListeners();
    } catch (e) {
      quotesState = const LoadingState.error("Get quotes failed");
      notifyListeners();
    }
  }
}
