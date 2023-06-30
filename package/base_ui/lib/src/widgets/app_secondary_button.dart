import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton({
    Key? key,
    this.onTap,
    this.buttonLabel,
  }) : super(key: key);

  final void Function()? onTap;
  final String? buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 39,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            width: 1,
            color: primaryColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 5, bottom: 8),
              child: Text(
                buttonLabel ?? 'Secondary Button',
                maxLines: 1,
                style:
                    AppTextStyle.poppins_400_16.copyWith(color: primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
