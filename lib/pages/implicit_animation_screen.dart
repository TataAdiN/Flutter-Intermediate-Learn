import 'package:flutter/material.dart';

import 'item_card.dart';

class ImplicitAnimationScreen extends StatelessWidget {
  ImplicitAnimationScreen({Key? key}) : super(key: key);

  final List<int> items = [26, 45];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List Project"),
      ),
      body: AnimatedList(
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) {
          return ItemCard(
            item: items[index],
          );
        },
      ),
    );
  }
}
