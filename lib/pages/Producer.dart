import 'package:flutter/material.dart';

class Producer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ProducerState();
  }
}

class _ProducerState extends State<Producer>{
  TextEditingController textCtrl=new TextEditingController();
  int fontSize = 12;
  String fontColor = "black";
  String wordPosition = "top";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            width: 350,
            height: 350,
            child: Image.asset("assets/test.jpg"),
          ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            ),
            RaisedButton(
              child: Text("照相机"),
              onPressed: (){},
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            ),
            RaisedButton(
              child: Text("相册"),
              onPressed: (){},
            )
          ],
        ),
        TextField(
          controller: textCtrl,
          decoration: InputDecoration(
            focusColor: Colors.red,
            labelText: "请输入要配置的表情包文字",
            border: OutlineInputBorder(),
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            ),
            DropdownButton<int>(
              hint: Text("文字大小"),
              value: fontSize,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (int newValue) {
                setState(() {
                  fontSize = newValue;
                });
              },
              items: <DropdownMenuItem<int>>[
                DropdownMenuItem(value: 12, child: Text("12")),
                DropdownMenuItem(value: 14, child: Text("14")),
                DropdownMenuItem(value: 16, child: Text("16")),
                DropdownMenuItem(value: 18, child: Text("18")),
                DropdownMenuItem(value: 20, child: Text("20"))
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
            ),
            DropdownButton<String>(
              hint: Text("文字颜色"),
              value: fontColor,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  fontColor = newValue;
                });
              },
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem(value: "black", child: Text("black")),
                DropdownMenuItem(value: "red", child: Text("red")),
                DropdownMenuItem(value: "green", child: Text("green")),
                DropdownMenuItem(value: "white", child: Text("white")),
                DropdownMenuItem(value: "yellow", child: Text("yellow"))
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
            ),
            DropdownButton<String>(
              hint: Text("相对位置"),
              value: wordPosition,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String newValue) {
                setState(() {
                  wordPosition = newValue;
                });
              },
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem(value: "top", child: Text("top")),
                DropdownMenuItem(value: "bottom", child: Text("bottom")),
                DropdownMenuItem(value: "left", child: Text("left")),
                DropdownMenuItem(value: "right", child: Text("right")),
                DropdownMenuItem(value: "center", child: Text("center"))
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,30,0,0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              ),
              RaisedButton(
                child: Text("合成"),
                onPressed: (){},
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              ),
              RaisedButton(
                child: Text("保存到本地"),
                onPressed: (){},
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              ),
              RaisedButton(
                child: Text("分享"),
                onPressed: (){},
              )
            ],
          ),
        )
      ],
    );
  }

}