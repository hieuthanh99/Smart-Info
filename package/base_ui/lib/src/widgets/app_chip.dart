import 'package:flutter/material.dart';

import '../../base_ui.dart';

class AppChip extends StatefulWidget {
  const AppChip({
    Key? key,
    required this.title,
    this.position,
    this.onTap,
    this.isSelected,
    this.borderRadius,
    this.widthBorder,
  }) : super(key: key);

  final String? title;
  final int? position;
  final void Function()? onTap;
  final bool? isSelected;
  final double? borderRadius;
  final double? widthBorder;

  @override
  State<AppChip> createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
        border: Border.all(color: primaryColor, width: widget.widthBorder ?? 2),
        color: widget.isSelected == true ? primaryColor : primaryColor[20],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Center(
          child: Text(
            widget.title ?? '',
            textAlign: TextAlign.center,
            style: AppTextStyle.poppins_600_14.copyWith(
              color: widget.isSelected == true ? Colors.white : primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
