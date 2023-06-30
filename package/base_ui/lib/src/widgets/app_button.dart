import 'package:flutter/material.dart';
import 'package:base_ui/base_ui.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.onTap,
    this.buttonLabel,
    this.backgroundColor,
    this.labelColor,
    this.icon,
    this.onLongPress,
    this.margin,
    this.labelStyle,
    this.padding,
  }) : super(key: key);

  final void Function()? onTap;
  final void Function()? onLongPress;
  final String? buttonLabel;
  final Color? backgroundColor;
  final Color? labelColor;
  final Widget? icon;
  final EdgeInsetsGeometry? margin;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        onLongPress: onLongPress,
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          backgroundColor: backgroundColor ?? primaryColor,
          minimumSize: const Size.fromHeight(39),
          elevation: 1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: padding ?? const EdgeInsets.only(top: 6, bottom: 9),
              child: Text(
                buttonLabel ?? 'Primary Button',
                maxLines: 1,
                style: labelStyle ?? AppTextStyle.poppins_400_16,
              ),
            ),
            const SizedBox(width: 10),
            icon ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
