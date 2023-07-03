import 'package:base_ui/base_ui.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () => checkUserLogin());
    super.initState();
  }

  Future<void> checkUserLogin() async {}

  @override
  void didUpdateWidget(covariant SplashScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: primaryColor,
      child: Center(
        child: WidgetLoading(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
