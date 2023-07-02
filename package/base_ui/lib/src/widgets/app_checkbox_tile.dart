import 'package:base_ui/base_ui.dart';
import 'package:flutter/material.dart';

class AppCheckboxTile<T extends MenuItemValue> extends StatelessWidget {
  const AppCheckboxTile({
    Key? key,
    this.onTap,
    this.title,
    this.value,
  }) : super(key: key);

  final void Function()? onTap;
  final bool? value;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 42,
        child: Card(
          margin: const EdgeInsets.only(top: 0, bottom: 0),
          elevation: 0,
          color: value ?? false ? primaryColor[20] : Colors.white,
          shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              const SizedBox(width: 16),
              AppCheckBox(value: value, onChanged: onTap),
              const SizedBox(width: 15),
              Expanded(
                child: Transform.translate(
                  offset: const Offset(0, -1),
                  child: Text(
                    title ?? 'title',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.poppins_400_16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class MenuItemValue {
  String valueItem();

  int idItem();
}
