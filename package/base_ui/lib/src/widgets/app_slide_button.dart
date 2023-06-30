import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';


class AppSlideButton extends StatelessWidget {
  const AppSlideButton({Key? key, this.titleList}) : super(key: key);

  final List<String>? titleList;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: titleList
              ?.map(
                (title) => Tab(
                  text: title,
                ),
              )
              .toList() ??
          [],
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: AppTextStyle.poppins_600_16.copyWith(
        fontWeight: FontWeight.bold
      ),
      labelColor: black,
      unselectedLabelStyle: AppTextStyle.poppins_400_16,
      unselectedLabelColor: black,
      indicatorColor: primaryColor,
      indicatorWeight: 3,
    );
  }
}
