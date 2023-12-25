import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LHelperFunctions {
  // static Color? getColor(String val)  {
  //   switch(val) {
  //    'Green' => Colors.green,
  //    'Monday' => 1,
  //   'Tuesday' => 2,
  //   'Wednesday' => 3,
  //   'Thursday' => 4,
  //   'Friday' => 5,
  //   'Saturday' => 6,
  //   'Sunday' => 7,
  //   _ => 10,

  // }}

  static Color? getColor(String value) {
    switch (value) {
      case 'Green':
        return Colors.green;

      case 'Red':
        return Colors.red;
      case 'Blue':
        return Colors.blue;
      case 'Pink':
        return Colors.pink;
      case 'Grey':
        return Colors.grey;
      case 'Purple':
        return Colors.purple;
      case 'Black':
        return Colors.black;
      case 'White':
        return Colors.white;
      default:
        return Colors.amber;
    }
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static List<T> removeDuplicate<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i++) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}
