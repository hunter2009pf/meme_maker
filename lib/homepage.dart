import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/math.dart';
import 'pages/language.dart';
import "pages/coding.dart";
import 'pages/user.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabCtrl;

  @override
  void initState(){
      tabCtrl = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: TabBarView(
        controller: tabCtrl,
        children: <Widget>[
          Math(),
          Language(),
          Coding(),
          User()
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: tabCtrl,
        labelColor: Colors.deepOrangeAccent,
        unselectedLabelColor: Colors.black26,
        tabs: <Widget>[
          Tab(
            text: "数学",
            icon: Icon(Icons.map),
          ),
          Tab(
            text: "英语",
            icon: Icon(Icons.chat),
          ),
          Tab(
            text:"编程",
            icon: Icon(Icons.code),
          ),
          Tab(
            text: "用户",
            icon: Icon(Icons.people),
          )
        ],
      ),
    );
  }

}