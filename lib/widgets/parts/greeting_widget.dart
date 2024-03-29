import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';

import '../../apps/blocs/auth_bloc.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.read<AuthBloc>().greeting(context, AppLocalizations.of(context)!),
        ),
        const Text(
          ', ',
        ),
        Text(
          context.read<AuthBloc>().user?.name ?? '-',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}