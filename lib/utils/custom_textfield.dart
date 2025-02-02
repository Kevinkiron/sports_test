import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.controller,
    this.onSubmit,
    this.color,
    this.validator,
    this.onChanged,
    required this.hintText,
    this.autofocus,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.maxLines,
    this.readOnly,
    this.prefix,
    this.suffix,
  });
  final TextEditingController? controller;
  final bool? autofocus;
  final void Function(String)? onSubmit;
  final String hintText;
  final Color? color;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final bool? readOnly;
  final Widget? prefix;
  final Widget? suffix;

  final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      maxLines: maxLines,
      autofocus: autofocus ?? false,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        color: AppColors.textGrey.withValues(alpha: 0.9),
        fontSize: 14,
        fontFamily: "Inter",
      ),
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        prefixIcon: prefix,
        suffixIcon: suffix,
        filled: true,
        fillColor: color ?? AppColors.blackBackground,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1.5,
            color: AppColors.textGrey,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.textGrey,
          fontSize: 12,
          fontFamily: "Inter",
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1.5,
            color: AppColors.textGrey.withValues(alpha: 0.1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            width: 1.5,
            color: AppColors.backgroundColor.withValues(alpha: 0.4),
          ),
        ),
      ),
    );
  }
}
