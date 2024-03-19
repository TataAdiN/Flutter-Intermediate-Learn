import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/auth_bloc.dart';
import '../apps/blocs/login_bloc.dart';
import '../apps/data/enums/app_button_align.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/events/login/login_event_auth.dart';
import '../apps/events/login/login_event_created_account.dart';
import '../apps/states/login/login_state.dart';
import '../apps/states/login/login_state_authorized.dart';
import '../apps/states/login/login_state_created_account.dart';
import '../apps/states/login/login_state_error.dart';
import '../apps/states/login/login_state_loading.dart';
import '../apps/states/login/login_state_unauthorized.dart';
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
            if (state is LoginStateAuthorized) {
              context.pushReplacementNamed(AppRoute.main);
            } else if (state is LoginStateError) {
              if (state.errorType == ClientErrorType.noInternet) {
                showAppDialog(
                  context,
                  dialog: AppErrorAlertDialog(
                    title: 'No Internet',
                    message: state.message,
                  ),
                );
              }
              showAppDialog(
                context,
                dialog: AppErrorAlertDialog(
                  message: state.message,
                ),
              );
            } else if (state is LoginStateUnauthorized) {
              showAppDialog(
                context,
                dialog: const AppErrorAlertDialog(
                  title: 'Login Failed',
                  message: 'Wrong password or email. Please try again...',
                ),
              );
            } else if (state is LoginStateCreatedAccount) {
              showAppDialog(
                context,
                dialog: AppSuccessAlertDialog(
                  title: 'Success create Account',
                  message: '${state.email} ${state.message}',
                ),
              );
            }
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
            height: ResponsiveSize.fromWith(context, percentage: 24),
          ),
          SizedBox(
            height: ResponsiveSize.fromWith(context, percentage: 24),
            width: ResponsiveSize.fromWith(context, percentage: 24),
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
          BlocConsumer<LoginBloc, LoginState>(
            builder: (context, state) {
              return _formLogin(context);
            },
            listener: (BuildContext context, LoginState state) {},
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: AppButton(
              color: Colors.grey,
              onClick: () async {
                Map<String, dynamic>? result = await context
                    .pushNamed<Map<String, dynamic>>(AppRoute.register);
                if (result != null && result.isNotEmpty && context.mounted) {
                  context.read<LoginBloc>().add(
                        LoginEventCreatedAccount(
                          result: result,
                        ),
                      );
                }
              },
              label: 'Sign up',
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
                errorText: 'Isian Email tidak boleh kosong',
              ),
              const SizedBox(
                height: 12,
              ),
              AppObsecureField(
                controller: passwordController,
                title: 'Password',
                errorText: 'Isian password tidak boleh kosong',
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
                label: 'Sign in',
                align: AppButtonAlign.center,
              ),
            ],
          ),
        ),
      );
}
