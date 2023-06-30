import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:top_snackbar_flutter/safe_area_values.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:base_ui/gen/assets.gen.dart';

import '../widgets/app_notification_dialog.dart';

enum BarType { SUCCESS, FAILURE }

class SnackBarUtils {
  static show<T>({
    required BuildContext context,
    required Widget child,
    Duration? animationDuration,
    Duration? reverseAnimationDuration,
    Duration? displayDuration,
    VoidCallback? onTap,
    bool? persistent,
    EdgeInsets? padding,
    Curve? curve,
    Curve? reverseCurve,
    SafeAreaValues safeAreaValues = const SafeAreaValues(),
    DismissType dismissType = DismissType.onTap,
    List<DismissDirection> dismissDirection = const [DismissDirection.down],
  }) {
    showTopSnackBar(
      Overlay.of(context),
      child,
      animationDuration: animationDuration ?? const Duration(milliseconds: 350),
      reverseAnimationDuration:
          reverseAnimationDuration ?? const Duration(milliseconds: 150),
      displayDuration: displayDuration = const Duration(milliseconds: 1500),
      onTap: onTap,
      persistent: persistent ?? false,
      padding: padding ?? const EdgeInsets.all(16),
      curve: curve ?? Curves.linear,
      reverseCurve: reverseCurve ?? Curves.fastOutSlowIn,
      safeAreaValues: safeAreaValues,
      dismissType: dismissType,
      dismissDirection: dismissDirection,
    );
  }

  static makeSuccess<T>({required BuildContext context, String? msg}) {
    show(
      context: context,
      curve: Curves.easeOutCubic,
      child: SuccessDialog(msg: msg),
    );
  }

  static makeWarning<T>({required BuildContext context, String? msg}) {
    show(
      context: context,
      curve: Curves.easeOutCubic,
      child: WarningDialog(msg: msg),
    );
  }

  static makeError<T>({required BuildContext context, String? msg}) {
    show(
      context: context,
      curve: Curves.easeOutCubic,
      child: ErrorDialog(msg: msg),
    );
  }

  static SnackbarController showSnackBar({
    required String message,
    required BarType type,
    SnackPosition? snackPosition,
  }) {
    switch (type) {
      case BarType.SUCCESS:
        return Get.snackbar(
          'SUCCESS',
          message,
          padding: const EdgeInsets.all(7),
          snackPosition: snackPosition ?? SnackPosition.TOP,
          backgroundColor: Colors.green.withOpacity(0.8),
          icon: SvgPicture.asset(Assets.icons.icSuccess),
          colorText: Colors.white,
          shouldIconPulse: false,
          onTap: (snack) => snack.dismissDirection,
          animationDuration: const Duration(milliseconds: 300),
          reverseAnimationCurve: Curves.easeOutCubic,
          forwardAnimationCurve: Curves.easeOutCubic,
        );
      case BarType.FAILURE:
        return Get.snackbar(
          'ERROR',
          message,
          padding: const EdgeInsets.all(7),
          snackPosition: snackPosition ?? SnackPosition.TOP,
          backgroundColor: Colors.red.withOpacity(0.8),
          colorText: Colors.white,
          icon: const Icon(Icons.error_outline, color: Colors.white),
          shouldIconPulse: false,
          onTap: (snack) => snack.dismissDirection,
          animationDuration: const Duration(milliseconds: 300),
          reverseAnimationCurve: Curves.easeOutCubic,
          forwardAnimationCurve: Curves.easeOutCubic,
        );
    }
  }
}
