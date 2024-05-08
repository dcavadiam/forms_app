import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMsg;
  final bool obscure;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomTextFormField(
      {super.key,
      this.label,
      this.hint,
      this.errorMsg,
      this.onChanged,
      this.validator,
      this.obscure = false});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
        //borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(40));
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscure,
      decoration: InputDecoration(
          enabledBorder: border,
          errorBorder: border.copyWith(
              borderSide: BorderSide(color: Colors.red.shade800)),
          isDense: true,
          label: label != null ? Text(label!) : null,
          hintText: hint,
          focusColor: colors.primary,
          //prefixIcon: Icon(Icons.supervised_user_circle_outlined, color: colors.primary,
          errorText: errorMsg,
          focusedErrorBorder: border.copyWith(
              borderSide: BorderSide(color: Colors.red.shade800)),
          focusedBorder:
              border.copyWith(borderSide: BorderSide(color: colors.primary))),
    );
  }
}
