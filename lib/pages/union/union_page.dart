import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'asset_provider.dart';
import 'asset_service.dart';
import 'union_screen.dart';

class UnionPage extends StatelessWidget {
  const UnionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AssetProvider(
        AssetService(),
      ),
      child: const UnionScreen(),
    );
  }
}
