import 'package:flutter/material.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';

import '../../apps/data/enums/app_button_align.dart';
import '../../utils/responsive_screen.dart';
import '../components/app_button.dart';

class ErrorWithRetryWidget extends StatelessWidget {
  const ErrorWithRetryWidget({
    super.key,
    required this.onRetry,
    required this.title,
    required this.message,
  });

  final VoidCallback onRetry;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.sentiment_dissatisfied,
            size: 64,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            message,
          ),
          const SizedBox(
            height: 24,
          ),
          AppButton(
            align: AppButtonAlign.center,
            icon: Icons.sync,
            width: ResponsiveSize.fromWidth(context, percentage: 36),
            onClick: () => onRetry(),
            label: AppLocalizations.of(context)!.tryAgain,
          ),
        ],
      ),
    );
  }
}
