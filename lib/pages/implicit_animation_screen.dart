import 'dart:math';

import 'package:flutter/material.dart';

import 'item_card.dart';

class ImplicitAnimationScreen extends StatelessWidget {
  ImplicitAnimationScreen({Key? key}) : super(key: key);

  final List<int> items = [26, 45];
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated List Project"),
      ),
      body: AnimatedList(
        key: listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, animation) {
          return ItemCard(
            item: items[index],
            animation: animation,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final randNumber = Random().nextInt(100);
          const index = 0;
          items.insert(index, randNumber);
          listKey.currentState?.insertItem(index);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
