import 'dart:ui';

import 'package:flutter/material.dart';

class ViewUtil {
  static String getValueCheck(String status) {
    if (status == "pending")
      return "anwsered";
    else if (status == "anwsered") return "pending";
    return "pending";
  }

  static Color getColorCheckButton(String status) {
    if (status == "pending")
      return Colors.grey;
    else if (status == "anwsered") return Colors.blue;
    return Colors.grey;
  }

  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
  }
}
