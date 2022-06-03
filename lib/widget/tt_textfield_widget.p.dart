import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:subscription_tracker/res/res.dart';
import 'package:subscription_tracker/utils/utils.dart';

enum TextType { email, password, nomal }

class TTTextField extends StatelessWidget {
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextType textType;
  final bool isRequired;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;

  const TTTextField({
    Key? key,
    this.inputFormatters,
    this.validator,
    this.textType = TextType.nomal,
    this.isRequired = false,
    this.textInputType,
    this.onChanged,
    this.controller,
    this.obscureText = false,
  }) : super(key: key);

  String? validate(String? value) {
    switch (textType) {
      case TextType.password:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập mật khẩu';
        }
        return null;
      case TextType.email:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập email';
        }
        if (!Validator.validEmail(value ?? '')) {
          return 'Email không đúng định dạng';
        }
        return null;
      case TextType.nomal:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập thông tin';
        }
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      controller: controller,
      validator: validator ?? validate,
      inputFormatters: inputFormatters,
      keyboardType: textInputType,
      cursorColor: Cl.color353542,
      style: St.body14400.copyWith(color: Cl.colorFFFFFF),
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Cl.color353542,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Cl.color353542,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Cl.color353542,
          ),
        ),
      ),
    );
  }
}
