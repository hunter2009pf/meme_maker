import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocalWarehouse extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LocalWarehouseState();
  }
}

class _LocalWarehouseState extends State<LocalWarehouse>{
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