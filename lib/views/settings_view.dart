import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_change_locale.dart';
import '../apps/events/auth/auth_event_logout.dart';
import '../apps/states/auth_state.dart';
import '../routes/app_route.dart';
import '../widgets/dialogs/app_exit_alert_dialog.dart';
import '../widgets/dialogs/app_show_dialog.dart';
import '../widgets/parts/greeting_widget.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  final List<DropdownMenuItem<String>> languages = [
    const DropdownMenuItem(
      value: "id",
      child: Text("Indonesia"),
    ),
    const DropdownMenuItem(
      value: "en",
      child: Text("English"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.settings),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          state.whenOrNull(
            loggedOut: () {
              while (context.canPop()) {
                context.pop();
              }
              context.pushReplacementNamed(AppRoute.login);
            },
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GreetingWidget(),
            languageCard(context, localizations),
            accountCard(context, localizations),
          ],
        ),
      ),
    );
  }

  Column languageCard(BuildContext context, AppLocalizations localizations) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            localizations.language,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          elevation: 1,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                const Icon(Icons.language),
                const SizedBox(width: 12),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    padding: const EdgeInsets.all(4),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    value: context.read<AuthBloc>().locale.languageCode,
                    onChanged: (String? language) {
                      if (language != null) {
                        context.read<AuthBloc>().add(
                              AuthEventChangeLocale(locale: language),
                            );
                      }
                    },
                    items: languages,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Column accountCard(BuildContext context, AppLocalizations localizations) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            localizations.account,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          elevation: 1,
          shadowColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          child: InkWell(
            onTap: () {
              showAppDialog(
                context,
                dialog: appExitAlertDialog(
                  context,
                  onExit: () => context.read<AuthBloc>().add(
                        AuthEventLogout(),
                      ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const Icon(Icons.exit_to_app),
                  const SizedBox(width: 12),
                  Text(localizations.logout),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
