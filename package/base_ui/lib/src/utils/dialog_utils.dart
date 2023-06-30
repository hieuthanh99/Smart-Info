import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:base_ui/base_ui.dart';

import '../../gen/assets.gen.dart';

class DialogUtils {
  static Future show<T>({
    required BuildContext context,
    required Widget child,
    Color? barrierColor,
    Color? backgroundColor,
    bool barrierDismissible = true,
    ShapeBorder? shape,
    EdgeInsets? insetPadding,
    DialogTransitionType? animationType,
    int? animDuration,
    Curve? curve,
    double? elevation,
    bool? canPop,
    AlignmentGeometry? alignment = Alignment.center,
    EdgeInsetsGeometry? contentPadding = const EdgeInsets.all(0),
  }) {
    return showAnimatedDialog(
      curve: curve ?? Curves.easeInOutBack,
      animationType: animationType ?? DialogTransitionType.scale,
      duration: Duration(milliseconds: animDuration ?? 550),
      barrierColor: barrierColor ?? black[80]?.withOpacity(0.7),
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (_) {
        return WillPopScope(
          onWillPop: () async => canPop ?? true,
          child: SafeArea(
            child: AlertDialog(
              elevation: elevation ?? 0,
              alignment: alignment,
              insetPadding: insetPadding ?? _defaultInsetPadding,
              backgroundColor: backgroundColor,
              shape: shape,
              contentPadding: contentPadding,
              content: child,
            ),
          ),
        );
      },
    );
  }

  static Future<void> showLoading({bool? canPop}) async {
    isShowing = true;
    Get.dialog(
      WidgetLoading(canPop: canPop ?? false),
      barrierDismissible: canPop ?? false,
    );
  }

  static Future<void> dialogConfirm(
    String? mess,
    String? cancelText,
    String? acceptText,
    Function()? cancel,
    Function()? accept,
  ) async {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          side: BorderSide(color: primaryColor[90]!, width: 2),
        ),
        title: Row(
          children: [
            SvgPicture.asset(
              Assets.icons.icNotification,
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                'Thông báo',
                style: AppTextStyle.poppins_600_20.copyWith(
                  color: Color.fromRGBO(50, 125, 255, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        content: Text(
          mess ?? '',
          style: AppTextStyle.poppins_400_16.copyWith(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: InkWell(
              onTap: cancel,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: primaryColor[90]!, width: 1),
                  color: primaryColor[0],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        cancelText ?? 'Hủy',
                        style: AppTextStyle.poppins_400_16
                            .copyWith(color: primaryColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10),
            child: InkWell(
              onTap: accept,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: primaryColor[90]!, width: 1),
                  color: primaryColor[90],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        acceptText ?? 'Đồng ý',
                        style: AppTextStyle.poppins_400_16
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> dialogWarning(
    String? mess,
    String? acceptText,
    Function()? cancel,
  ) async {
    Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          side: BorderSide(color: primaryColor[90]!, width: 2),
        ),
        title: Row(
          children: [
            SvgPicture.asset(
              Assets.icons.icWarning,
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                'Cảnh báo',
                style: AppTextStyle.poppins_600_20
                    .copyWith(color: warning, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        content: Text(
          mess ?? '',
          style: AppTextStyle.poppins_400_16.copyWith(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10),
            child: InkWell(
              onTap: cancel,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: primaryColor[90]!, width: 1),
                  color: primaryColor[0],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        acceptText ?? 'OK',
                        style: AppTextStyle.poppins_400_16
                            .copyWith(color: primaryColor),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> dismissLoading() async {
    if (isShowing) {
      isShowing = false;
      Get.back();
    }
  }

  ///  common attributes
  static const EdgeInsets _defaultInsetPadding =
      EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0);
}
