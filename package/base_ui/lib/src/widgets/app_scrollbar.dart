import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';


class AppScrollbar extends StatelessWidget {
  const AppScrollbar({
    Key? key,
    this.scrollController,
    this.child,
  }) : super(key: key);

  final ScrollController? scrollController;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbVisibility: true,
      thumbColor: primaryColor,
      controller: scrollController,
      thickness: 3,
      radius: const Radius.circular(10),
      child: child ?? Container(),
    );
  }
}
