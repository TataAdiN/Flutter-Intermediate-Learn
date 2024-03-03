import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intermediate_learn/apps/states/login/login_state.dart';

import '../apps/blocs/login_bloc.dart';
import '../apps/events/login/login_event_auth.dart';
import '../data/enums/app_button_align.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_obsecure_field.dart';
import '../widgets/components/app_text_field.dart';

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120.0,
                width: 120.0,
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
                  onClick: () {},
                  label: 'Sign up',
                  align: AppButtonAlign.center,
                ),
              )
            ],
          ),
        ),
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
