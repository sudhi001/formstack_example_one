import 'package:flutter/material.dart';
import 'package:formstack/formstack.dart';

class MainControllerScreen extends StatefulWidget {
  const MainControllerScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainControllerScreenState();
}

class _MainControllerScreenState extends State<MainControllerScreen> {
  @override
  Widget build(BuildContext context) {
    //You can call by name FormStack.api().render(name: "auth")
    return Container(child: FormStack.api().render());
  }
}
