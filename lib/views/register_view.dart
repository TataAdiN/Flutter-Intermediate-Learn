import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/register_bloc.dart';
import '../apps/data/enums/app_button_align.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/events/register/register_event_action.dart';
import '../apps/states/register_state.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_obsecure_field.dart';
import '../widgets/components/app_text_field.dart';
import '../widgets/dialogs/app_error_alert_dialog.dart';
import '../widgets/expanded_appbar.dart';
import '../widgets/fullscreen_app_loading.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKeyRegister = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: BlocConsumer<RegisterBloc, RegisterState>(
          builder: (context, state) {
            if (state is RegisterStateLoading) {
              return FullscreenAppLoading(message: state.message);
            }
            return _buildRegisterScreen(context);
          },
          listener: (BuildContext context, RegisterState state) {
            state.whenOrNull(
              error: (ClientErrorType errorType, String message) {
                if (state is RegisterStateError) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      if (state.errorType == ClientErrorType.noInternet) {
                        return appErrorAlertDialog(
                          context,
                          title: AppLocalizations.of(context)!.noInternet,
                          message: state.message,
                        );
                      }
                      return appErrorAlertDialog(
                        context,
                        message: state.message,
                      );
                    },
                  );
                }
              },
              created: (String message, String email) {
                Map<String, dynamic> result = {
                  'created': true,
                  'message': message,
                  'email': email
                };
                context.pop<Map<String, dynamic>>(result);
              },
            );
          },
        ),
      ),
    );
  }

  CustomScrollView _buildRegisterScreen(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ExpandedAppBar(
          title: AppLocalizations.of(context)!.signUpAccount,
          color: const Color.fromRGBO(245, 246, 251, 1),
        ),
        SliverFillRemaining(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                _registerForm(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Form _registerForm(BuildContext context) {
    return Form(
      key: formKeyRegister,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AppTextField(
              controller: nameController,
              title: AppLocalizations.of(context)!.name,
              isEmail: false,
              errorText: AppLocalizations.of(context)!.failNoName,
            ),
            const SizedBox(height: 12),
            AppTextField(
              controller: emailController,
              title: 'Email',
              isEmail: true,
              errorText: AppLocalizations.of(context)!.failNoEmail,
            ),
            const SizedBox(height: 12),
            AppObsecureField(
              title: 'Password',
              errorText: AppLocalizations.of(context)!.failNoPassword,
              controller: passwordController,
            ),
            const SizedBox(height: 12),
            AppButton(
              onClick: () {
                if (formKeyRegister.currentState!.validate()) {
                  context.read<RegisterBloc>().add(RegisterEventAction(
                        name: nameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                      ));
                }
              },
              label: AppLocalizations.of(context)!.signUp,
              align: AppButtonAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
