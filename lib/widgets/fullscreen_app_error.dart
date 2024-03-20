import 'package:flutter/material.dart';

import '../apps/data/enums/app_button_align.dart';
import '../l10n/localizations.dart';
import '../utils/responsive_screen.dart';
import 'components/app_button.dart';
import 'parts/error_with_retry_widget.dart';

class FullscreenAppError extends StatelessWidget {
  const FullscreenAppError({
    super.key,
    required this.message,
    required this.withRetry,
    required this.title,
    this.onRetry,
  });

  final String title;
  final String message;
  final bool withRetry;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
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
                      : noRetryErrorInfo(context),
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

  Center noRetryErrorInfo(BuildContext context) {
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
            onClick: () async => await Navigator.of(context).maybePop(),
            label: AppLocalizations.of(context)!.back,
          ),
        ],
      ),
    );
  }
}
