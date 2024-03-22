import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.item,
    required this.animation,
    required this.onDelete,
  });

  final int item;
  final Animation<double> animation;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        color: Colors.primaries[item % Colors.primaries.length],
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Number $item",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () => onDelete(),
                icon: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
