import 'package:flutter/material.dart';
import 'postlist.dart';
import 'register.dart';
void main() {
  runApp(const Login());
}

class Login extends StatefulWidget{
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  TextEditingController _idController = TextEditingController();
  TextEditingController _pwController = TextEditingController();
  Future<void> sendLoginData() async {
    Map <String, String> loginData = {
      'user_id' : _idController.text,
      'user_pw': _pwController.text,
    };
  }
  @override
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(

        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:MediaQuery.of(context).size.width*0.8,
                height:MediaQuery.of(context).size.height*0.3,
                child: Column(
                  children: [
                    Image.asset( 'assets/images/logo.jpg'),
                    Text(
                        "Log In"
                    ),
                  ],
                ),
              ),

              Container(
                width:MediaQuery.of(context).size.width*0.8,
                height:MediaQuery.of(context).size.height*0.4,
                child:Row(
                  children:[
                    Expanded(child: Column(
                        children:[
                          Row(
                              children:[
                                Text("ID"),
                                Expanded(child:  TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '아이디를 입력하세요'
                                  ),
                                  controller:_idController,
                                ),),

                              ]
                          ),
                          Row(
                              children:[
                                Text("PW"),
                                Expanded(child:   TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '비밀번호를 입력하세요'
                                  ),
                                  obscureText: true,
                                  controller:_pwController,
                                ),),

                              ]
                          ),
                        ]
                    ),
                    ),
                    ElevatedButton(
                      onPressed:(){
                        // 아이디와 비밀 번호 비교후 리스트 피이지로 이동, 제이슨 객체형태로 보냄.
                        Navigator.push(context,MaterialPageRoute(builder:(context)=> PostList()),);
                      },
                      child: Text('로그인'),
                    ),
                  ],
                ),
              ),
              Container(
                width:MediaQuery.of(context).size.width*0.8,
                height:MediaQuery.of(context).size.height*0.2,
                child: Row(
                  children:[
                    ElevatedButton(
                      onPressed:(){
                        //회원 가입 페이지로 이동
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> Register(),));

                      },
                      child: Text('회원가입'),
                    ),
                    //   ElevatedButton(
                    //   onPressed:(){},
                    //   child: Text('비밀번호를 잊어버렸습니다.'),
                    // ),
                  ],

                ),
              ),

            ],
          ),
        ) ,
      ) ,
    );
  }
}


