import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../apps/data/enums/app_button_align.dart';
import '../l10n/localizations.dart';
import '../utils/responsive_screen.dart';
import 'components/app_button.dart';
import 'parts/error_with_retry_widget.dart';

Scaffold fullScreenAppError(
  BuildContext context, {
  required String title,
  required String message,
  required bool withRetry,
  VoidCallback? onRetry,
}) {
  return Scaffold(
    body: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset('assets/icon.png'),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                withRetry
                    ? ErrorWithRetryWidget(
                        onRetry: () => onRetry!(),
                        title: title,
                        message: message,
                      )
                    : noRetryErrorInfo(
                        context,
                        title: title,
                        message: message,
                      ),
                const SizedBox(
                  height: 12,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Center noRetryErrorInfo(
  BuildContext context, {
  required String title,
  required String message,
}) {
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
        AppButton(
          align: AppButtonAlign.center,
          icon: Icons.arrow_back,
          width: ResponsiveSize.fromWith(context, percentage: 36),
          onClick: () => context.pop(),
          label: AppLocalizations.of(context)!.back,
        ),
      ],
    ),
  );
}
