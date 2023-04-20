import 'package:formstack_example_one/form.dart';
import 'package:formstack_example_one/main_controller_screen.dart';
import 'package:formstack_example_one/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ThemeConfig.init();
  await FormConfig.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeConfig.theme(),
        home: const MainControllerScreen(),
        debugShowCheckedModeBanner: false);
  }
}
