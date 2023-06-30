import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../../base_ui.dart';

class AppSearchInputWithFilter extends StatelessWidget {
  const AppSearchInputWithFilter({
    Key? key,
    this.controller,
    this.scrollPadding,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.fillColor,
    this.onShowingFilter,
    this.pathIcon,
  }) : super(key: key);

  final TextEditingController? controller;
  final EdgeInsets? scrollPadding;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final Color? fillColor;
  final void Function()? onShowingFilter;
  final String? pathIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppSearchInput(
            controller: controller,
            scrollPadding: scrollPadding,
            hintText: hintText,
            keyboardType: keyboardType,
            onChanged: onChanged,
            fillColor: fillColor,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: onShowingFilter,
          child: SvgPicture.asset(
            pathIcon ?? Assets.icons.icFilter2,
            width: 35,
            height: 35,
          ),
        ),
      ],
    );
  }
}

class AppSearchInput extends StatelessWidget {
  const AppSearchInput({
    Key? key,
    this.controller,
    this.scrollPadding,
    this.hintText,
    this.keyboardType,
    this.onChanged,
    this.fillColor,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
  }) : super(key: key);

  final TextEditingController? controller;
  final EdgeInsets? scrollPadding;
  final String? hintText;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final Color? fillColor;
  final FocusNode? focusNode;
  final Function()? onFieldSubmitted;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onFieldSubmitted: (value) => onFieldSubmitted,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      style: AppTextStyle.poppins_400_16,
      scrollPadding: scrollPadding ?? const EdgeInsets.only(bottom: 20),
      decoration: InputDecoration(
        prefixIcon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SvgPicture.asset(Assets.icons.icSearch),
        ),
        prefixIconConstraints: const BoxConstraints(
          minHeight: 40,
          minWidth: 42,
        ),
        fillColor: fillColor ?? Colors.white,
        filled: true,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.poppins_400_16.copyWith(
          color: black[50],
        ),
        border: OutlineBorder.searchInputBorder,
        enabledBorder: OutlineBorder.searchInputEnabledBorder,
        focusedBorder: OutlineBorder.searchInputFocusedBorder,
      ),
    );
  }
}
