import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';

class AppInputColum extends StatefulWidget {
  const AppInputColum({
    Key? key,
    this.title,
    this.isRequired,
    this.input,
    this.height,
  }) : super(key: key);

  final String? title;
  final bool? isRequired;
  final Widget? input;
  final double? height;

  @override
  State<AppInputColum> createState() => _AppInputColumState();
}

class _AppInputColumState extends State<AppInputColum> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          child: Text.rich(
            TextSpan(
              text: widget.title ?? 'Default title',
              style: AppTextStyle.poppins_500_16.copyWith(
                color: black[70]
              ),
              children: <TextSpan>[
                TextSpan(
                  text: widget.isRequired ?? false ? '*' : '',
                  style: AppTextStyle.poppins_500_16.copyWith(
                      color: error
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: widget.input ?? Container(height: 40, color: Colors.white),
        ),
      ],
    );
  }
}
