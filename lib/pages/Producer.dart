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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0,20,0,0),
          child: SizedBox(
            width: 350,
            height: 350,
            child: Image.asset("assets/test.jpg"),
          ),
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
        ),
        Row(
          children: <Widget>[
            DropdownButton<int>(
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
                DropdownMenuItem(value: 12),
                DropdownMenuItem(value: 14),
                DropdownMenuItem(value: 16),
                DropdownMenuItem(value: 18),
                DropdownMenuItem(value: 20)
              ],
            )
          ],
        )
      ],
    );
  }

}