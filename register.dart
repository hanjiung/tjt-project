import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({key? key}) : super(key:key);

  @override
  State<Register> createState() => _Register();
}
 class _Register extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              
            )
          )
          )
        ),
    );
  }
}
