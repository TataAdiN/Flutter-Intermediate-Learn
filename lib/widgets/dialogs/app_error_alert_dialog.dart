import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppErrorAlertDialog extends StatelessWidget {
  const AppErrorAlertDialog({
    super.key,
    required this.message,
    this.title = 'Something wrong...',
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.sentiment_dissatisfied,
              size: 24,
              color: Colors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      titlePadding: const EdgeInsets.all(0),
      content: Text(message),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromRGBO(166, 166, 166, 1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
          onPressed: () {
            context.pop();
          },
          child: const Text('OK'),
        )
      ],
    );
  }
}
