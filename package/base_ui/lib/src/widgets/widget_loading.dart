import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:base_ui/gen/assets.gen.dart';

class WidgetLoading extends StatelessWidget {
  const WidgetLoading({Key? key, this.canPop}) : super(key: key);

  final bool? canPop;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop ?? false,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(Assets.icons.icEarth),
            Lottie.asset(
              Assets.anim.animLoading,
              width: 120,
              height: 120,
              fit: BoxFit.scaleDown,
            ),
          ],
        ),
      ),
    );
  }
}
