import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import 'api_provider.dart';
import 'api_service.dart';
import 'infinity_scroll_screen.dart';

class InfinityScrollPage extends StatelessWidget {
  const InfinityScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApiProvider(
        ApiService(
          Client(),
        ),
      ),
      child: const InfinityScrollScreen(),
    );
  }
}
