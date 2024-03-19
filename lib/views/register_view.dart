import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../apps/blocs/register_bloc.dart';
import '../apps/data/enums/app_button_align.dart';
import '../apps/data/enums/client_error_type.dart';
import '../apps/events/register/register_event_action.dart';
import '../apps/states/register/register_state.dart';
import '../apps/states/register/register_state_created.dart';
import '../apps/states/register/register_state_error.dart';
import '../apps/states/register/register_state_loading.dart';
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
            if (state is RegisterStateError) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  if (state.errorType == ClientErrorType.noInternet) {
                    return AppErrorAlertDialog(
                      title: 'No Internet',
                      message: state.message,
                    );
                  }
                  return AppErrorAlertDialog(
                    message: state.message,
                  );
                },
              );
            } else if (state is RegisterStateCreated) {
              Map<String, dynamic> result = {
                'created': true,
                'message': state.message,
                'email': state.email
              };
              context.pop<Map<String, dynamic>>(result);
            }
          },
        ),
      ),
    );
  }

  Widget _buildRegisterScreen(BuildContext context) => CustomScrollView(
        slivers: [
          const ExpandedAppBar(
            title: 'Daftar Akun',
            color: Color.fromRGBO(245, 246, 251, 1),
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

  Widget _registerForm(BuildContext context) => Form(
        key: formKeyRegister,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppTextField(
                controller: nameController,
                title: 'Nama',
                isEmail: false,
                errorText: 'Isian Nama tidak boleh kosong',
              ),
              const SizedBox(
                height: 12,
              ),
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
                title: 'Password',
                errorText: 'Isian password tidak boleh kosong',
                controller: passwordController,
              ),
              const SizedBox(
                height: 12,
              ),
              AppButton(
                onClick: () {
                  if (formKeyRegister.currentState!.validate()) {
                    context.read<RegisterBloc>().add(
                          RegisterEventAction(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        );
                  }
                },
                label: 'Sign Up',
                align: AppButtonAlign.center,
              ),
            ],
          ),
        ),
      );
}
