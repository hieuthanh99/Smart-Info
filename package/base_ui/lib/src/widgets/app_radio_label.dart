import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';

class RadioLabel<T> extends StatelessWidget {
  const RadioLabel({
    super.key,
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.padding,
  });

  final String label;
  final EdgeInsets? padding;
  final T groupValue;
  final T value;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Row(
          children: <Widget>[
            Radio<T>(
              fillColor: MaterialStateColor.resolveWith(
                    (states) => primaryColor,
              ),
              groupValue: groupValue,
              value: value,
              onChanged: (newValue) => onChanged(newValue as T),
            ),
            Text(label, style: AppTextStyle.poppins_400_14),
          ],
        ),
      ),
    );
  }
}