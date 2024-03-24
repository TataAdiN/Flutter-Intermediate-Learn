import 'package:flutter/material.dart';

import 'asset_service.dart';
import 'loading_state.dart';
import 'quote.dart';

class AssetProvider extends ChangeNotifier {
  final AssetService assetService;

  AssetProvider(this.assetService);

  LoadingState quotesState = LoadingState.initial;
  String quotesMessage = "";

  List<Quote> quotes = [];

  Future<void> getQuotes() async {
    try {
      quotesState = LoadingState.loading;
      notifyListeners();

      final result = await assetService.getQuotes();

      quotes.addAll(result.list);
      quotesState = LoadingState.loaded;

      notifyListeners();
    } catch (e) {
      quotesState = LoadingState.error;
      quotesMessage = "Get quotes failed";
      notifyListeners();
    }
  }
}
