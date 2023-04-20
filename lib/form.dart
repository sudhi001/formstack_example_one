import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:formstack/formstack.dart';

class FormConfig {
  static VoidCallback? setState;
  FormConfig._();

  static bool isLoggedInUSer = false;
  static Map<String, dynamic> keyValueMap = {};
  static init() async {
    await FormStack.api().buildFormFromJson(
        await json.decode(await rootBundle.loadString('assets/app.json')));

    FormStack.api().addCompletionCallback(
      GenericIdentifier(id: "IS_COMPLETED"),
      onBeforeFinishCallback: (result) async {
        await Future.delayed(const Duration(seconds: 2));
        return Future.value(true);
      },
      onFinish: (result) {
        debugPrint("Completed With Result : $result");
        FormConfig.setState?.call();
      },
    );
  }

  static void refreshState(VoidCallback setState) {
    FormConfig.setState = setState;
  }
}
