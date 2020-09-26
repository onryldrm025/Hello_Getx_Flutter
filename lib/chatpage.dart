import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/countController.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
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
                      return Row(
                        children: <Widget>[
                          Text(_.user[index].name.toString()),
                          Text(_.user[index].age.toString())
                        ],
                      );
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
