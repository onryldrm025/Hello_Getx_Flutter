import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'countController.dart';

class MyTestPage extends StatefulWidget {
  @override
  _MyTestPageState createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Test Pages"),
      ),
      body: GetBuilder<CountController>(
          init: CountController(),
          builder: (_) {
            return Text("Count ${_.count}");
          }),
    );
  }
}
