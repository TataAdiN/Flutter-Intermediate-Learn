import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_logout.dart';
import '../apps/states/auth/auth_state.dart';
import '../apps/states/auth/auth_state_loggedout.dart';
import '../routes/app_route.dart';
import '../widgets/dialogs/app_exit_alert_dialog.dart';
import '../widgets/dialogs/app_show_dialog.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (BuildContext context, AuthState state) {
          if (state is AuthStateLoggedout) {
            context.pushReplacementNamed(AppRoute.login);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            greeting(context),
            languageCard(context),
            accountCard(context),
          ],
        ),
      ),
    );
  }

  Row greeting(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.read<AuthBloc>().greeting(context),
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

  Column languageCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Language ',
            style: TextStyle(fontWeight: FontWeight.bold),
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
                    value: 'id',
                    onChanged: (String? language) {},
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

  Column accountCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'Account ',
            style: TextStyle(fontWeight: FontWeight.bold),
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
                dialog: AppExitAlertDialog(
                  onExit: () => context.read<AuthBloc>().add(
                        AuthEventLogout(),
                      ),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(Icons.exit_to_app),
                  SizedBox(width: 12),
                  Text('Logout'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
