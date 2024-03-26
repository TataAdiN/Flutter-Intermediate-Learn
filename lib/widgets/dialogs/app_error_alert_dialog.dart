import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/localizations.dart';

AlertDialog appErrorAlertDialog(
  BuildContext context, {
  required String message,
  String? title,
}) {
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
    actionsAlignment: MainAxisAlignment.end,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(32.0),
      ),
    ),
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
            title ?? AppLocalizations.of(context)!.somethingWrong,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
    alignment: Alignment.bottomCenter,
    content: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(message),
    ),
    actions: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromRGBO(166, 166, 166, 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: () {
          context.pop();
        },
        child: const Text('OK'),
      )
    ],
  );
}
