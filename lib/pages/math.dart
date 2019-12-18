import 'package:flutter/material.dart';

class Math extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MathState();
  }
}

class _MathState extends State<Math>{
  TextEditingController searchCtrl;
  @override
  Widget build(BuildContext context) {
    return
        TextField(
          style: TextStyle(fontSize: 25),
          controller: searchCtrl,
        );
  }

}