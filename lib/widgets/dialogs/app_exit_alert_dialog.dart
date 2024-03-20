import 'package:flutter/material.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';

import '../components/app_button.dart';

class AppExitAlertDialog extends StatelessWidget {
  const AppExitAlertDialog({
    super.key,
    required this.onExit,
  });

  final VoidCallback onExit;

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
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
        child: Row(
          children: [
            const Icon(
              Icons.info,
              size: 24,
              color: Colors.white,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              localizations.warning,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          localizations.exitWarning,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: <Widget>[
        AppButton(
          onClick: () => Navigator.of(context).pop(),
          label: localizations.close,
          color: Colors.black54,
          width: 120,
          icon: Icons.close,
        ),
        AppButton(
          onClick: () => onExit(),
          label: localizations.sure,
          color: Colors.orange,
          width: 120,
          icon: Icons.exit_to_app,
        )
      ],
    );
  }
}
