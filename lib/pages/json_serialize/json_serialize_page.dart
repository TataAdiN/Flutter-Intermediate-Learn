import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'asset_provider.dart';
import 'asset_service.dart';
import 'json_serialize_screen.dart';

class JsonSerializePage extends StatelessWidget {
  const JsonSerializePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AssetProvider(
        AssetService(),
      ),
      child: const JsonSerializeScreen(),
    );
  }
}
