import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/events/auth/auth_event_logout.dart';
import '../apps/states/auth/auth_state.dart';
import '../apps/states/auth/auth_state_loggedout.dart';
import '../routes/app_route.dart';
import '../widgets/components/app_button.dart';

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
              exitAlert(
                context,
                onExit: () => context.read<AuthBloc>().add(AuthEventLogout()),
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

  Future<Object?> exitAlert(
    BuildContext context, {
    required VoidCallback onExit,
  }) {
    return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      context: context,
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return Container();
      },
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget widget,
      ) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(animation),
          child: AlertDialog(
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
          ),
        );
      },
    );
  }
}
