import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
enum Gender {MAN,WOMAEN}
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key:key);

  @override
  State<Register> createState() => _Register();
}
class _Register extends State<Register> {
  TextEditingController _idController = TextEditingController();
  TextEditingController _pwController = TextEditingController();
  TextEditingController _chpwController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  Gender? _gender = Gender.MAN;
  Future<XFile?> getImage() async{
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  } //이미지 피커 함수 정의
  XFile? _image;
  Future<void> _pickImage() async{
    final XFile? image = await getImage();
    setState((){
      _image =image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: Text('회원가입')
            ),
            body: Center(
              child: SingleChildScrollView(
               child: Column(
                   children:[
                     Container(
                       child: Column(
                         children: [
                           Text('ID'),
                           Row(
                               children:[
                                 TextField(
                                     decoration: InputDecoration(
                                         border: OutlineInputBorder(),
                                         labelText: '아이디를 입력하세요'
                                     ),
                                     controller:_idController,
                                 ),
                                 ElevatedButton(
                                     onPressed: () {
                                       //중복있는지 없는지 확인
                                     },
                                     child: Text("중복확인"),
                                 )
                               ]
                           ),
                         ],
                       ),
                     ),
                     Container(
                         child: Column(
                             children:[
                               Text('password'),
                               TextField(
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 ),
                                 obscureText: true,
                                 controller:_pwController,
                               )
                             ]
                         )
                     ),
                     Container(
                         child: Column(
                             children:[
                               Text('password 다시'),
                               TextField(
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 ),
                                 obscureText: true,
                                 controller:_chpwController,
                               ),
                               //다시 입력한 버밀 번호가 맞을 시 표시 아닐싣도 표시
                             ]
                         )
                     ),
                     Container(
                         child: Column(
                             children:[
                               Text('이름'),
                               TextField(
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 ),
                                 controller:_nameController,
                               )
                             ]
                         )
                     ),

                     Container(
                         child: Column(
                             children:[
                               Text('나이'),
                               TextField(
                                 decoration: InputDecoration(
                                   border: OutlineInputBorder(),
                                 ),
                                 controller: _ageController,
                               )
                             ]
                         )
                     ),
                     Container(
                         child: Column(
                             children: [
                               Text('성별'),
                               ListTile(
                                 title:Text('남자'),
                                 leading:Radio(
                                   value:Gender.MAN,
                                   groupValue:_gender,
                                   onChanged: (Gender? value) {
                                     setState((){
                                       _gender = value;
                                     });
                                     },
                                 ),
                               ),
                               ListTile(
                                 title:Text('여자'),
                                 leading:Radio(
                                   value:Gender.WOMAEN,
                                   groupValue:_gender,
                                   onChanged: (Gender? value) {
                                     setState((){
                                       _gender = value;
                                     });
                                   },
                                 ),
                               ),
                             ]
                         )
                     ),
                     Container(
                         child: Column(
                             children:[
                               Text('대학교')
                             ]
                         )
                     ),
                     Container(
                         child: Row(
                             children:[
                               Text('학생증 사진'),

                             ]
                         )
                     ),
                     Container(
                         child: Column(
                             children:[
                               Text('본인인증 '),
                             ]
                         )
                     ),
                     Container(
                         child: ElevatedButton(
                             onPressed: () {
                               //소요 시간 말해주기
                             },
                             child: Text('회원 가입 신청하기')
                         )
                     ),
                   ]
               )
              )
            )
        ),
    );
  }
}


