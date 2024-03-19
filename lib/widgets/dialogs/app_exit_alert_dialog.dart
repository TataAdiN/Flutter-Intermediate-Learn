import 'package:flutter/material.dart';

import '../components/app_button.dart';

class AppExitAlertDialog extends StatelessWidget {
  const AppExitAlertDialog({
    super.key,
    required this.onExit,
  });

  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.all(0),
      insetPadding: const EdgeInsets.all(10),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      actionsPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      alignment: Alignment.bottomCenter,
      title: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        child: const Row(
          children: [
            Icon(
              Icons.info,
              size: 24,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Warning!',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Text(
          "Are you sure to Logout?",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      actions: <Widget>[
        AppButton(
          onClick: () => Navigator.of(context).pop(),
          label: 'Close',
          color: Colors.black54,
          width: 120,
          icon: Icons.close,
        ),
        AppButton(
          onClick: () => onExit(),
          label: 'Yakin!',
          color: Colors.orange,
          width: 120,
          icon: Icons.exit_to_app,
        )
      ],
    );
  }
}
