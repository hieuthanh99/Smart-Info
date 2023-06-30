import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import '../../base_ui.dart';

class AppChipWithTick extends StatelessWidget {
  const AppChipWithTick(
      {Key? key, required this.isClicked, required this.title})
      : super(key: key);

  final bool? isClicked;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromRGBO(179, 210, 219, 1),
          width: 1,
        ),
        color: isClicked == true ? primaryColor[30] : primaryColor[0],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: isClicked ?? false,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset(Assets.icons.icTick),
              ),
            ),
            Text(
              title ?? '',
              style: AppTextStyle.poppins_500_16.copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
