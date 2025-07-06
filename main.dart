import 'package:flutter/material.dart';
import 'postlist.dart';
import 'register.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
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
    return Scaffold(

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // padding:,
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
            ),  //로고 보이는 곳

            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height*0.2,
              child:Row(
                children:[
                  Column(
                      children:[
                        Container(
                          width: MediaQuery.of(context).size.width*0.65,
                          height: MediaQuery.of(context).size.height*0.1,
                          child: Row(
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
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.65,
                          height: MediaQuery.of(context).size.height*0.1,
                          child:  Row(
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
                        ),
                      ]
                  ), //아이디 비밀번호쓰는 칸
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.25,
                    height: MediaQuery.of(context).size.height*0.1,
                    child: ElevatedButton(

                      onPressed:(){
                        // 아이디와 비밀 번호 비교후 리스트 피이지로 이동, 제이슨 객체형태로 보냄.
                        Navigator.of(context).push( MaterialPageRoute(builder: (context) => const PostList()),);
                      },
                      child: Text('로그인'),
                    ),
                  ),  // 로그인 버튼
                ],
              ),
            ),  //아이디 로그인 적고 버튼을 눌러 로그인 하는 곳
            Container(
              width:MediaQuery.of(context).size.width*0.8,
              height:MediaQuery.of(context).size.height*0.2,
              child: Row(
                children:[
                  ElevatedButton(
                    onPressed:(){
                      //회원 가입 페이지로 이동
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Register()),
                      );

                    },
                    child: Text('회원가입'),
                  ),  //회원가입 버튼
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.04,
                  ),

                  ElevatedButton(
                    onPressed:(){},
                    child: Text('비밀번호를 잊어버렸습니다.'),
                  ),  //비밀번호 찾기 버튼
                ],

              ),
            ),  //회원가입과 비밀번호 찾기로 이동하는곳

          ],
        ),
      ) ,
    );
  }
}

