import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:base_ui/base_ui.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    Key? key,
    this.controller,
    this.validator,
    this.autoValidateMode,
    this.scrollPadding,
    this.hintText,
    this.keyboardType,
    this.isPassword,
    this.readOnly,
    this.initialValue,
    this.suffixIcon,
    this.obscuringCharacter,
    this.enabled,
    this.onChanged,
    this.inputFormatters,
    this.hintStyle,
    this.textInputAction,
    this.prefixIcon, this.borderNormal,

  }) : super(key: key);

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;
  final EdgeInsets? scrollPadding;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? isPassword;
  final String? initialValue;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? obscuringCharacter;
  final bool? enabled;
  final TextStyle? hintStyle;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final bool? borderNormal;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primaryColor,
      initialValue: initialValue,
      controller: controller,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction ?? TextInputAction.done,
      enabled: enabled ?? true,
      readOnly: readOnly ?? false,
      obscureText: isPassword ?? false,
      autovalidateMode: autoValidateMode ?? AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      style: AppTextStyle.poppins_400_16,
      validator: validator,
      scrollPadding: scrollPadding ?? const EdgeInsets.only(bottom: 20),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon : prefixIcon,
        fillColor: (enabled == false) ? black[10] : Colors.white,
        filled: true,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 32,
          minWidth: 16,
          minHeight: 16,
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyle.poppins_400_14,
        errorMaxLines: 1,
        errorStyle: AppTextStyle.poppins_400_12.copyWith(color: Colors.red),
        border: borderNormal == true ? OutlineBorder.appInputBorder : OutlineBorder.focusedBorder,
        enabledBorder: borderNormal == true ? OutlineBorder.appInputEnabledBorder : OutlineBorder.enabledBorder,
        focusedBorder: borderNormal == true ? OutlineBorder.appInputFocusedBorder : OutlineBorder.focusedBorder,
        errorBorder: borderNormal == true ? OutlineBorder.appInputErrorBorder : OutlineBorder.errorBorder,
        focusedErrorBorder: borderNormal == true ? OutlineBorder.appInputFocusedErrorBorder : OutlineBorder.focusedErrorBorder,
        disabledBorder: OutlineBorder.focusedBorder,
      ),
    );
  }
}
