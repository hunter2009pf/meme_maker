import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 登录页面设计目标：
 * 使用sqlite数据库，用户注册会加载到数据库里；
 * 登录是从数据库取数据进行验证；账户密码错误会有弹框提示。
 */
class Login extends StatelessWidget{
  TextEditingController accountController=new TextEditingController();
  TextEditingController passwordController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
        children: <Widget>[
          getAccountInput(),
          getPasswordInput(),
          Padding(
            padding: const EdgeInsets.fromLTRB(140,30,140,0),
            child: RaisedButton(
              color: Color.fromARGB(100, 255, 255, 0),
              child: Text("log in",textScaleFactor: 2,),
              onPressed: (){
                var acc=accountController.text;
                var pwd=passwordController.text;
                if(acc=="admin" && pwd=="123456"){
                  Navigator.pushReplacementNamed(context, "homePage");
                }else{
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("提示"),
                          content: Text("账户是admin，密码是123456"),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("知道了"),
                              onPressed: () => Navigator.of(context).pop(),
                            )
                          ],
                        );
                      }
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }

  Widget getAccountInput(){
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        children: <Widget>[
          Icon(Icons.account_box),
          Expanded(
            child: TextField(
              style: TextStyle(fontSize: 25),
              controller: accountController,
              decoration: InputDecoration(
                hintText: "please input your account",
                hintStyle: TextStyle(color: Color.fromARGB(255, 100, 255, 255))
              ),
            ),
          )
        ],
      )
    );
  }

  Widget getPasswordInput(){
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          children: <Widget>[
            Icon(Icons.security),
            Expanded(
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 25),
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "please input your password",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 100, 255, 255))
                ),
              ),
            )
          ],
        )
    );
  }
}