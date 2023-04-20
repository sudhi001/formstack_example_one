import 'package:flutter/material.dart';
import 'package:formstack/formstack.dart';
import 'package:formstack_example_one/form.dart';

class MainControllerScreen extends StatefulWidget {
  const MainControllerScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainControllerScreenState();
}

class _MainControllerScreenState extends State<MainControllerScreen> {
  var mainKey = UniqueKey();

  @override
  void initState() {
    super.initState();
    FormConfig.refreshState(
      () {
        mainKey = UniqueKey();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //You can call by name FormStack.api().render(name: "auth")
    return Container(key: mainKey, child: FormStack.api().render());
  }
}
