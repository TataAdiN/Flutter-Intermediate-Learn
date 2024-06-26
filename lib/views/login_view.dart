import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/l10n/localizations.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/blocs/login_bloc.dart';
import '../apps/data/enums/app_button_align.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/events/login/login_event_auth.dart';
import '../apps/events/login/login_event_created_account.dart';
import '../apps/states/login_state.dart';
import '../routes/app_route.dart';
import '../utils/responsive_screen.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_obsecure_field.dart';
import '../widgets/components/app_text_field.dart';
import '../widgets/dialogs/app_error_alert_dialog.dart';
import '../widgets/dialogs/app_show_dialog.dart';
import '../widgets/dialogs/app_success_alert_dialog.dart';
import '../widgets/fullscreen_app_loading.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();

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
        child: BlocConsumer<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginStateLoading) {
              return FullscreenAppLoading(message: state.message);
            }
            return _loginView(context);
          },
          listener: (BuildContext context, LoginState state) {
            state.whenOrNull(
              authorized: (){
                context.pushReplacementNamed(AppRoute.main);
              },
              error: (ClientErrorType errorType, String message){
                if (errorType == ClientErrorType.noInternet) {
                  showAppDialog(
                    context,
                    dialog: appErrorAlertDialog(
                      context,
                      title: AppLocalizations.of(context)!.noInternet,
                      message: message,
                    ),
                  );
                } else {
                  showAppDialog(
                    context,
                    dialog: appErrorAlertDialog(
                      context,
                      title: AppLocalizations.of(context)!.somethingWrong,
                      message: message,
                    ),
                  );
                }
              },
              unauthorized: (String message){
                showAppDialog(
                  context,
                  dialog: appErrorAlertDialog(
                    context,
                    title: AppLocalizations.of(context)!.failLogin,
                    message: message,
                  ),
                );
              },
              createdAccount: (String message, String email){
                showAppDialog(
                  context,
                  dialog: appSuccessAlertDialog(
                    context,
                    title: AppLocalizations.of(context)!.accountCreated,
                    message: '$email $message',
                  ),
                );
              }
            );
          },
        ),
      ),
    );
  }

  SingleChildScrollView _loginView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: ResponsiveSize.fromWidth(context, percentage: 24),
          ),
          SizedBox(
            height: ResponsiveSize.fromWidth(context, percentage: 24),
            width: ResponsiveSize.fromWidth(context, percentage: 24),
            child: Image.asset(
              'assets/icon.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Image Stories",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          _formLogin(context),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AppButton(
              color: Colors.grey,
              onClick: () async {
                Map<String, dynamic>? result = await context
                    .pushNamed<Map<String, dynamic>>(AppRoute.register);
                if (result != null && result.isNotEmpty && context.mounted) {
                  context
                      .read<LoginBloc>()
                      .add(LoginEventCreatedAccount(result: result));
                }
              },
              label: AppLocalizations.of(context)!.signUp,
              align: AppButtonAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget _formLogin(BuildContext context) => Form(
        key: formKeyLogin,
        autovalidateMode: AutovalidateMode.always,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppTextField(
                controller: emailController,
                title: 'Email',
                isEmail: true,
                errorText: AppLocalizations.of(context)!.failNoEmail,
              ),
              const SizedBox(
                height: 12,
              ),
              AppObsecureField(
                controller: passwordController,
                title: 'Password',
                errorText: AppLocalizations.of(context)!.failNoPassword,
              ),
              const SizedBox(
                height: 12,
              ),
              AppButton(
                onClick: () {
                  if (formKeyLogin.currentState!.validate()) {
                    context.read<LoginBloc>().add(
                          LoginEventAuth(
                            email: emailController.text,
                            password: passwordController.text,
                            authBloc: context.read<AuthBloc>(),
                          ),
                        );
                  }
                },
                label: AppLocalizations.of(context)!.signIn,
                align: AppButtonAlign.center,
              ),
            ],
          ),
        ),
      );
}
