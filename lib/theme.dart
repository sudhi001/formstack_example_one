import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeConfig {
  static init() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemStatusBarContrastEnforced: true,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.amber.shade200,
        systemNavigationBarColor: Colors.grey.shade50,
        systemNavigationBarDividerColor: Colors.grey.shade50,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemStatusBarContrastEnforced: true,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.amber.shade200,
            systemNavigationBarColor: Colors.grey.shade50,
            systemNavigationBarDividerColor: Colors.grey.shade50,
            systemNavigationBarIconBrightness: Brightness.dark,
          )),
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
    );
  }
}
