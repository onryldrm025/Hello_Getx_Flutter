import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'countController.dart';
import 'mytestpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  getpage() {
    Get.to(MyTestPage());
  }

  getsnackbar() {
    Get.snackbar(
      "Eklendi",
      "message",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  getdialog() {
    Get.defaultDialog(
      title: "Selam",
      content: Text("data"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () => getpage(),
                child: Text("Getx Page"),
              ),
              RaisedButton(
                onPressed: () => getsnackbar(),
                child: Text("Getx SnackBar"),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () => getdialog(),
                child: Text("Getx Dialog"),
              ),
            ],
          ),
          GetBuilder<CountController>(
              init: CountController(),
              builder: (_) {
                return Text("Count ${_.count}");
              }),
          GetX<CountController>(
            init: CountController(),
            builder: (_) {
              return Expanded(
                child: ListView.builder(
                    itemCount: _.user.length,
                    itemBuilder: (contex, index) {
                      return Text(_.user[index].name.toString());
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
