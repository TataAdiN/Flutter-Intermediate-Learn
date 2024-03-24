import 'package:flutter/material.dart';

import 'api_service.dart';
import 'api_state.dart';
import 'quote.dart';

class ApiProvider extends ChangeNotifier {
  final ApiService apiService;

  ApiProvider(this.apiService);

  int? pageItems = 1;
  int sizeItems = 10;

  ApiState quotesState = ApiState.initial;
  String quotesMessage = "";

  bool quotesError = false;

  List<Quote> quotes = [];

  Future<void> getQuotes() async {
    try {
      if (pageItems == 1) {
        quotesState = ApiState.loading;
        notifyListeners();
      }

      final result = await apiService.getQuotes(pageItems!, sizeItems);

      quotes.addAll(result.list);
      quotesMessage = "Success";
      quotesError = false;
      quotesState = ApiState.loaded;
      pageItems = pageItems! + 1;

      notifyListeners();
    } catch (e) {
      quotesState = ApiState.error;
      quotesError = true;
      quotesMessage = "Get quotes failed";
      notifyListeners();
    }
  }
}
