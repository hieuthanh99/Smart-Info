import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void ToastUtils({
  required dynamic mess,
  Color? backgroundColor,
  ToastGravity? gravity,
}) {
  Fluttertoast.showToast(
    msg: mess.toString(),
    toastLength: Toast.LENGTH_SHORT,
    gravity: gravity ?? ToastGravity.BOTTOM,
    backgroundColor: backgroundColor ?? Colors.black.withOpacity(.7),
  );
}
