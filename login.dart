import 'package:flutter/material.dart';

class login extends StatelessWidget{
  @override
  Widget build(BuildContext){
    return Scaffold(
    
      body: Container(
        child: Column(
          children: [
            Image.asset(icon),
            Text(
              "Log In"
            ),
          ],

        ),
      ) ,

    );
  }
}
