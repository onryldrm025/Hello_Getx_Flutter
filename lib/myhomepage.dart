import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_getx/chatpage.dart';
import 'package:hello_getx/countController.dart';
import 'package:hello_getx/homapage.dart';
import 'package:hello_getx/models.dart';
import 'package:hello_getx/mytestpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex;
  List<Widget> pageList = List<Widget>();

  @override
  void initState() {
    _currentIndex = 0;
    pageList.add(HomePage());
    pageList.add(ChatPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Hello"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: pageList,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<CountController>()
              .asdd(new RxUser(name: RxString("Onur"), age: RxInt(3)));
          Get.find<CountController>().increment();
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("HomePage")),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), title: Text("ChatPage")),
        ],
        currentIndex: _currentIndex,
        onTap: changepage,
      ),
    );
  }

  void changepage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
