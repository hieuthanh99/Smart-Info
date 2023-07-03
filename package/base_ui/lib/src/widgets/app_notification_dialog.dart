import 'package:base_ui/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:base_ui/src/theme/theme.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key, this.msg}) : super(key: key);

  final String? msg;

  @override
  Widget build(BuildContext context) {
    return CustomNotificationDialog(
      suffixIcon: SvgPicture.asset(Assets.icons.icSuccess),
      child: Text(
        msg ?? '',
        style: AppTextStyle.poppins_400_18.copyWith(
          color: success,
        ),
      ),
    );
  }
}

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key, this.msg}) : super(key: key);

  final String? msg;

  @override
  Widget build(BuildContext context) {
    return CustomNotificationDialog(
      suffixIcon: SvgPicture.asset(Assets.icons.icError),
      child: Text(
        msg ?? '',
        style: AppTextStyle.poppins_400_18.copyWith(
          color: error,
        ),
      ),
    );
  }
}

class WarningDialog extends StatelessWidget {
  const WarningDialog({Key? key, this.msg}) : super(key: key);

  final String? msg;

  @override
  Widget build(BuildContext context) {
    return CustomNotificationDialog(
      suffixIcon: SvgPicture.asset(Assets.icons.icWarning),
      child: Text(
        msg ?? '',
        style: AppTextStyle.poppins_400_18.copyWith(
          color: warning,
        ),
      ),
    );
  }
}

class CustomNotificationDialog extends StatelessWidget {
  const CustomNotificationDialog({
    Key? key,
    this.suffixIcon,
    this.child,
  }) : super(key: key);

  final Widget? suffixIcon;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            width: 2,
            color: Color.fromRGBO(240, 241, 243, 1),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFFEEAEC),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30,
              child: suffixIcon ?? const SizedBox(),
            ),
            if (suffixIcon != null) const SizedBox(width: 15),
            Expanded(
              child: child ?? const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
