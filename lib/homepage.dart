import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/Producer.dart';
import 'pages/Ranking.dart';
import 'pages/LocalWarehouse.dart';

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
      tabCtrl = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: TabBarView(
        controller: tabCtrl,
        children: <Widget>[
          Producer(),
          Ranking(),
          LocalWarehouse()
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: tabCtrl,
        labelColor: Colors.deepOrangeAccent,
        unselectedLabelColor: Colors.black26,
        tabs: <Widget>[
          Tab(
            text: "制造",
            icon: Icon(Icons.image),
          ),
          Tab(
            text: "排行",
            icon: Icon(Icons.playlist_add_check),
          ),
          Tab(
            text: "仓库",
            icon: Icon(Icons.storage),
          )
        ],
      ),
    );
  }

}