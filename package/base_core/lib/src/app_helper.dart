import 'dart:async';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:base_core/src/app_enum.dart';

class AppHelper {
  static String timestampToDate(int timestamp) {
    final DateTime date;
    final is13Characters = timestamp.toString().length == 13;
    if (is13Characters) {
      date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    } else {
      date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    }
    final formatter = DateFormat('dd/MM/yyyy');
    return formatter.format(date);
  }

  static DateTime timestampToDateTime(int timestamp) {
    final DateTime date;
    final is13Characters = timestamp.toString().length == 13;
    if (is13Characters) {
      date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    } else {
      date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    }
    return date;
  }

  static String timestampToDate12Numbers(int timestamp) {
    final DateTime date;
    date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    final formatter = DateFormat('dd-MM-yyyy');
    return formatter.format(date);
  }

  static int dateToTimestamp(String dateStr) {
    final formatter = DateFormat('dd/MM/yyyy');
    final date = formatter.parse(dateStr);
    return date.millisecondsSinceEpoch;
  }

  static DateTime toDateTime(String date) {
    final dateSplit = date.split('/');
    final day = int.parse(dateSplit[0]);
    final month = int.parse(dateSplit[1]);
    final year = int.parse(dateSplit[2]);
    return DateTime.utc(year, month, day);
  }

  static String timeStampToTime(int timestamp) {
    final format = DateFormat('HH:mm');
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return format.format(date);
  }

  static Size getSizeByKey(GlobalKey key) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    final size = renderBox?.size;
    return size ?? Size.zero;
  }

  static bool compareDate(String startDate, String endDate) {
    final start = DateFormat('MM-yyyy').parse(startDate);
    final end = DateFormat('MM-yyyy').parse(endDate);
    return start.isBefore(end);
  }

  static bool compareDateToShowNew(String startDate, String endDate) {
    final start = DateFormat('dd/MM/yyyy').parse(startDate);
    final end = DateFormat('dd/MM/yyyy').parse(endDate);
    return start.isBefore(end) || start.isAtSameMomentAs(end);
  }

  static String convertDateFromDataApi(String data) {
    final inputFormat = DateFormat('dd/MM/yyyy');
    final inputDate = inputFormat.parse(data);

    final outputFormat = DateFormat('dd-MM-yyyy');
    final outputDate = outputFormat.format(inputDate);
    return outputDate;
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }

  static bool checkFormatDateOfBirth(String value) {
    final regularExpression =
        RegExp(r'^(3[01]|[12][0-9]|0[1-9])-(1[0-2]|0[1-9])-[0-9]{4}$');
    return regularExpression.hasMatch(value);
  }

  static bool checkFormatTimeWorking(String value) {
    final regularExpression = RegExp(r'^(1[0-2]|0[1-9])-[0-9]{4}$');
    return regularExpression.hasMatch(value);
  }

  static bool checkFormatEmail(String value) {
    final regularExpression = RegExp(r'^[A-Za-z0-9+_.-]+@(.+)$');
    return regularExpression.hasMatch(value);
  }

  static String convertDate(String date) {
    if (date == '' || date.trim() == '') {
      return '';
    } else {
      final time = DateFormat('dd-MM-yyyy').parse(date);
      final timeConverted = DateFormat('yyyy-MM-dd').format(time);
      return timeConverted;
    }
  }

  static String convertDateMMYYYY(String date) {
    if (date == '' || date.trim() == '') {
      return '';
    } else {
      final time = DateFormat('MM-yyyy').parse(date);
      final timeConverted = DateFormat('yyyy-MM').format(time);
      return '$timeConverted-01';
    }
  }

  Future<Size> getImageDimension({required String url}) {
    final completer = Completer<Size>();
    final image = Image.network(url);
    image.image.resolve(ImageConfiguration.empty).addListener(
      ImageStreamListener(
        (ImageInfo imageInfo, bool synchronousCall) {
          final myImage = imageInfo.image;
          final size = Size(
            myImage.width.toDouble(),
            myImage.height.toDouble(),
          );
          completer.complete(size);
        },
      ),
    );
    return completer.future;
  }

  static DataSourceType isLocalPath(String path) {
    final uri = Uri.parse(path);
    final isFile = uri.scheme == '' || uri.scheme == 'file';
    final isNetWork = uri.scheme == 'http' || uri.scheme == 'https';
    if (isFile) return DataSourceType.file;
    if (isNetWork) return DataSourceType.network;
    throw ArgumentError('Invalid path: $path');
  }

  static Future<String> datePicker(String format, BuildContext context) async {
    var selectedDate = DateTime.now();
    var date = DateFormat(format).format(DateTime.now());

    final picked = await showDatePicker(
      locale: const Locale('en', 'GB'),
      keyboardType: TextInputType.datetime,
      errorInvalidText: 'Ngày tháng sai định dạng!',
      errorFormatText: 'Ngày tháng sai định dạng!',
      fieldLabelText: 'Nhập ngày',
      context: context,
      fieldHintText: format,
      initialDate: selectedDate,
      firstDate: DateTime(selectedDate.year - 100, 8),
      lastDate: DateTime(selectedDate.year + 100),
    );

    if (picked != selectedDate) {
      selectedDate = picked!;
      date = DateFormat(format).format(picked);
    }

    return date;
  }

  static bool compareDateWithToday(String value) {
    if (value.length < 10) {
      return false;
    } else {
      final dateToday = DateFormat('dd-MM-yyyy').format(DateTime.now());
      final timeToday = DateFormat('dd-MM-yyyy').parse(dateToday);

      final end = DateFormat('dd-MM-yyyy').parse(value);
      return timeToday.isBefore(end) || timeToday.isAtSameMomentAs(end);
    }
  }

  static bool compareDateOfBi(String value) {
    final date = DateFormat('MM-dd-yyyy').format(DateTime.now());
    if (value == date) {
      return true;
    } else {
      return false;
    }
  }

  static void jumpToTop(ScrollController controller) {
    controller.animateTo(
      0,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 350),
    );
  }

  static void jumpToBottom(ScrollController controller) {
    controller.animateTo(
      controller.position.maxScrollExtent,
      curve: Curves.easeOut,
      duration: const Duration(milliseconds: 350),
    );
  }

  static void jumpToPosition(ScrollController controller, double position) {
    final clampedPosition = position.clamp(
      0,
      controller.position.maxScrollExtent,
    );
    controller.animateTo(
      clampedPosition.toDouble(),
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeOut,
    );
  }

  static Color getRandomColor() {
    final random = Random();
    final colorsList = Colors.primaries;
    final randomIndex = random.nextInt(colorsList.length);
    return colorsList[randomIndex];
  }
}
