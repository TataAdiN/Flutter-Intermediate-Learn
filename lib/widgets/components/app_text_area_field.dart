import 'package:flutter/material.dart';

class AppTextAreaField extends StatelessWidget {
  const AppTextAreaField({
    Key? key,
    required this.controller,
    required this.title,
    required this.errorText,
    this.maxlines,
    this.minlines = 3,
    this.maxlength = 1000,
    this.isReadOnly = false,
  }) : super(key: key);
  final TextEditingController controller;
  final String title;
  final String errorText;
  final int? maxlines;
  final int minlines;
  final int maxlength;
  final bool isReadOnly;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
      maxLength: maxlength,
      keyboardType: TextInputType.multiline,
      minLines: minlines,
      maxLines: maxlines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 10, top: 20),
        labelText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusColor: Colors.blueAccent,
        fillColor: Colors.blueAccent,
        hoverColor:  Colors.blueAccent
      ),
      readOnly: isReadOnly,
    );
  }
}
