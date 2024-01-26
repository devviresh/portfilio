import 'package:flutter/material.dart';

class Screen {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 800 &&
      MediaQuery.of(context).size.width > 600;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width > 800;
}
