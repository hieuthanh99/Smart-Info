import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:base_core/base_core.dart';

import '../../gen/assets.gen.dart';
import '../../base_ui.dart';

class DropdownCheckBoxTile<T extends MenuItemValue> extends StatefulWidget {
  const DropdownCheckBoxTile({
    Key? key,
    required this.scrollController,
    this.title,
    this.scrollPadding,
    this.listItem,
    this.onItemTap,
    this.listItemSelected,
    this.onAddAll,
    this.height, this.heightChildren,
  }) : super(key: key);

  final ScrollController scrollController;
  final String? title;
  final List<T>? listItem;
  final List<T>? listItemSelected;
  final void Function(T value)? onItemTap;
  final void Function()? onAddAll;

  final EdgeInsets? scrollPadding;
  final double? height;
  final double? heightChildren;

  @override
  State<DropdownCheckBoxTile> createState() => _DropdownCheckBoxTileState<T>();
}

class _DropdownCheckBoxTileState<T extends MenuItemValue>
    extends State<DropdownCheckBoxTile<T>> {
  @override
  void initState() {
    super.initState();
  }

  void sortListByAlphabetically() {
    widget.listItem?.sort((a, b) => a.valueItem().toUpperCase().compareTo(
          b.valueItem().toUpperCase(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    sortListByAlphabetically();
    return ConfigurableExpansionTile(
      header: Container(
        height: widget.height ?? 60,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title ?? 'Default title',
              style: AppTextStyle.poppins_600_12
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(Assets.icons.icArrowLeft),
          ],
        ),
      ),
      headerExpanded: Container(
        height: widget.height ?? 60,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title ?? 'Default title',
              style: AppTextStyle.poppins_600_12
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SvgPicture.asset(Assets.icons.icCaretDown),
          ],
        ),
      ),
      childrenBody: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            _divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: AppCheckboxTile(
                value: widget.listItemSelected?.length == widget.listItem?.length,
                title: 'Tất cả',
                onTap: () {
                  setState(() {
                    setState(() {
                      if (widget.onAddAll != null) {
                        widget.onAddAll!();
                      }
                    });
                  });
                },
              ),
            ),
            SizedBox(
              height: widget.heightChildren ?? 260,
              child: Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: widget.scrollController,
                  itemCount: widget.listItem?.length,
                  itemBuilder: (context, index) {
                    final itemData = widget.listItem![index];
                    return Column(
                      children: [
                        _divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: AppCheckboxTile(
                            value: widget.listItemSelected?.hasObjectInList(
                              itemData,
                              (obj1, obj2) {
                                return obj1.idItem() == obj2.idItem();
                              },
                            ),
                            title: itemData.valueItem(),
                            onTap: () {
                              if (widget.onItemTap != null) {
                                widget.onItemTap!(widget.listItem![index]);
                              }
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _divider() => Container(
        height: 1.5,
        color: black[20]!,
      );
}
