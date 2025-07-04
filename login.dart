import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  final Controller = TextEditingController()
  @override
  Widget build(BuildContext){
    return Scaffold(
    
      body: Container(
        child: Column(
          mainAxisAlignment: mainAxisAlignment.center,
          children: [
            Image.asset(icon),
            Text(
              "Log In"
            ),
            Container(
              child:Row(
                children:[
                   Column(
                    children:[
                      Row(
                        children:[
                          Text("ID"),
                          TextField(
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '아이디를 입력하세요s'
                            ),
                          controller:Controller,),
                          ]
                        ),
                    Row(
                      children:[
                        Text("ID"),
                        TextField(
                          decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: '아이디를 입력하세요s'
                        ),
                        controller:Controller,),
                      ]
                    ),
                ]
                ),
                  ElevatedButton(
                    onPressed:(){},
                    child: Text('로그인'),
                  ),
                ],
              ),
            ),
            Row(
              children:[
                ElevatedButton(
                onPressed:(){},
                child: Text('회원가입'),
              ),
                ElevatedButton(
                onPressed:(){},
                child: Text('비밀번호를 잊어버렸습니다.'),
              ),
              ],

            ),
          ],
        ),
      ) ,
    );
  }
}
