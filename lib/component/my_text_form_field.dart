import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String? labelText;
  final TextInputAction? textInputAction;
  final TextInputType? keyBoardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const MyTextFormField({
    super.key,
    this.labelText,
    this.textInputAction,
    this.keyBoardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: keyBoardType,
        textInputAction: textInputAction,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // errorText: snapshot.error,
        ),
      ),
    );
  }
}
