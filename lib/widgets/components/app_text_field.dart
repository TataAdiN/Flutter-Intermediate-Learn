import 'package:flutter/material.dart';

import '../../utils/email_check.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.title,
    required this.errorText,
    this.controller,
    this.isEmail = false,
    this.extErrorText,
    this.helper,
  }) : super(key: key);

  final TextEditingController? controller;
  final String title;
  final String errorText;
  final bool isEmail;
  final String? extErrorText;
  final String? helper;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        if (isEmail) {
          if (!EmailCheck.validate(value)) {
            return "Mohon masukan email yang valid";
          }
        }
        return null;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 10),
        labelText: title,
        helperText: helper,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorText: extErrorText,
      ),
    );
  }
}
