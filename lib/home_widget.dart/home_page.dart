import 'package:chkp3/home_widget.dart/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.changeBodyTextFunction();
          },
          child: Text('Quem é?')),
      body: Center(
          child: Text(controller.isBodyTextChanged
              ? controller.bodyText2
              : controller.bodyText1)),
    );
  }
}
