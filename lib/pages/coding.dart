import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Coding extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CodingState();
  }
}

class _CodingState extends State<Coding>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("编程"),centerTitle: true,),
      body: Center(
        child: Text("黑客帝国"),
      ),
    );
  }

}