import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/components/app_obsecure_field.dart';
import '../widgets/components/app_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
              Form(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
