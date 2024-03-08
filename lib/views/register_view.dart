import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/enums/app_button_align.dart';
import '../widgets/components/app_button.dart';
import '../widgets/components/app_obsecure_field.dart';
import '../widgets/components/app_text_field.dart';
import '../widgets/expanded_appbar.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
        child: CustomScrollView(
          slivers: [
            const ExpandedAppBar(title: 'Daftar Akun', color: Colors.white10),
            SliverFillRemaining(
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          AppTextField(
                            controller: nameController,
                            title: 'Nama',
                            isEmail: true,
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
                            onClick: () {},
                            label: 'Sign Up',
                            align: AppButtonAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
