import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    Key? key,
    this.value,
    this.onChanged,
    this.customColor,
  }) : super(key: key);

  final bool? value;
  final void Function()? onChanged;
  final Color? customColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16,
      width: 16,
      child: Transform.scale(
        scale: 14.4 / 16,
        child: Theme(
          data: ThemeData(unselectedWidgetColor: customColor ?? primaryColor),
          child: Checkbox(
            value: value,
            onChanged: (value) {
              if (onChanged != null) onChanged!();
            },
            side: BorderSide(
              width: 2,
              color: customColor ?? primaryColor,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            activeColor: customColor ?? primaryColor,
          ),
        ),
      ),
    );
  }
}
