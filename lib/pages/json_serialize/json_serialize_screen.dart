import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'asset_provider.dart';
import 'loading_state.dart';

class JsonSerializeScreen extends StatefulWidget {
  const JsonSerializeScreen({super.key});

  @override
  State<JsonSerializeScreen> createState() => _JsonSerializeScreenState();
}

class _JsonSerializeScreenState extends State<JsonSerializeScreen> {
  @override
  void initState() {
    super.initState();
    final apiProvider = context.read<AssetProvider>();

    Future.microtask(() async => apiProvider.getQuotes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote List App"),
      ),
      body: Consumer<AssetProvider>(
        builder: (BuildContext context, AssetProvider provider, Widget? child) {
          final state = provider.quotesState;
          if (state == LoadingState.loading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
              ),
            );
          } else if (state == LoadingState.loaded) {
            final quotes = provider.quotes;
            return ListView.builder(
              itemCount: quotes.length,
              itemBuilder: (context, index) {
                final quote = quotes[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          quote.en,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        Text(quote.author),
                      ],
                    ),
                  ),
                );
              },
            );
          } else if (state == LoadingState.error) {
            final message = provider.quotesMessage;
            return Center(
              child: Text(message),
            );
          } else {
            return const Center(
              child: Text("No data"),
            );
          }
        },
      ),
    );
  }
}
