import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _UserState();
  }
}

class _UserState extends State<User>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("用户"),centerTitle: true,),
      body: Center(
        child: Text("用户视图"),
      ),
    );
  }

}