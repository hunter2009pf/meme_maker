import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ranking extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RankingState();
  }
}

class _RankingState extends State<Ranking>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("英语"),centerTitle: true,),
      body: Center(
        child: Text("native speaker")
      ),
    );
  }
}
