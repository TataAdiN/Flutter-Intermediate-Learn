import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../apps/blocs/auth_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Stories'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_photo_alternate_outlined),
            tooltip: "Upload",
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            tooltip: "Settings",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Container(
          color: Colors.green,
          child: Center(
            child: Text(context.read<AuthBloc>().userAuth?.name ?? '-'),
          ),
        ),
      ),
    );
  }
}
