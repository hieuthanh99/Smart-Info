import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../gen/assets.gen.dart';
import '../../base_ui.dart';

class AppDropdownFormField extends StatefulWidget {
  const AppDropdownFormField({
    Key? key,
    this.value,
    this.enabled,
    this.hintText,
    this.validator,
    this.items,
    this.onChanged,
    this.menuWidth,
    this.warning,
    this.invalid,
    this.maxHeight,
  }) : super(key: key);

  final String? value;
  final bool? enabled;
  final String? hintText;
  final String? Function(String?)? validator;
  final List<String>? items;
  final void Function(String?)? onChanged;
  final double? menuWidth;
  final double? maxHeight;
  final String? warning;
  final bool? invalid;

  @override
  State<AppDropdownFormField> createState() => _AppDropdownFormFieldState();
}

class _AppDropdownFormFieldState extends State<AppDropdownFormField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2(
        iconStyleData: IconStyleData(
          icon: widget.enabled ?? true
              ? SvgPicture.asset(Assets.icons.icCaretDown)
              : Container(),
        ),
        hint: Text(
          '-- Lựa chọn --',
          style: AppTextStyle.poppins_400_16.copyWith(
            color: widget.enabled ?? true ? black : black[50],
          ),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: widget.enabled ?? true ? Colors.white : black[20],
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 0,
          ),
          errorText: widget.invalid == true ? widget.warning : null,
          errorMaxLines: 1,
          errorStyle: AppTextStyle.poppins_400_12.copyWith(
            color: error,
          ),
          border: OutlineBorder.secondaryInputBorder,
          enabledBorder: widget.enabled ?? true
              ? OutlineBorder.searchInputEnabledBorder
              : InputBorder.none,
          focusedBorder: OutlineBorder.searchInputFocusedBorder,
          errorBorder: OutlineBorder.secondaryInputErrorBorder,
          focusedErrorBorder: OutlineBorder.secondaryInputErrorBorder,
        ),
        buttonStyleData: ButtonStyleData(
          height: 40,
          width: MediaQuery.of(context).size.width,
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
        ),
        dropdownStyleData: DropdownStyleData(
          padding: EdgeInsets.zero,
          width: widget.menuWidth,
          maxHeight: widget.maxHeight,
          elevation: 0,
          decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(color: Color.fromRGBO(205, 205, 205, 1), width: 1),
            borderRadius: BorderRadius.circular(5.0),
          ),
          offset: const Offset(-15, 0),
        ),
        isExpanded: true,
        items: (widget.items ?? <String>['1', '2', '3', '4'])
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.poppins_400_16.copyWith(
                    color: widget.enabled ?? true ? black : black[50],
                  ),
                ),
              ),
            )
            .toList(),
        value:
            (widget.value == null || widget.value == '') ? null : widget.value,
        onChanged: widget.enabled ?? true ? widget.onChanged : null,
      ),
    );
  }
}
