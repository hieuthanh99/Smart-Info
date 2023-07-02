import 'package:base_ui/base_ui.dart';
import 'package:flutter/material.dart';

class WidgetLoading extends StatelessWidget {
  const WidgetLoading({Key? key, this.canPop}) : super(key: key);

  final bool? canPop;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop ?? false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
