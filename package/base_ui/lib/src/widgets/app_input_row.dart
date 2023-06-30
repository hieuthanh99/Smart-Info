import 'package:flutter/material.dart';
import 'package:base_ui/src/theme/theme.dart';

class AppInputRow extends StatefulWidget {
  const AppInputRow({
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
  State<AppInputRow> createState() => _AppInputRowState();
}

class _AppInputRowState extends State<AppInputRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 30,
          child: SizedBox(
            height: widget.height ?? 40,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  text: widget.title ?? 'Default title',
                  style: AppTextStyle.poppins_500_16.copyWith(
                    color: black[70]
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.isRequired ?? false ? ' *' : '',
                      style: AppTextStyle.poppins_500_16.copyWith(
                          color: error
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 70,
          child: Align(
            alignment: Alignment.centerLeft,
            child: widget.input ?? Container(height: 40, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
