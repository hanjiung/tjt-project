import 'package:flutter/material.dart';

class login extends StatelessWidget{
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
              child: Column(
                children:[
                  Row(
                    children:[
                      Text("ID"),
                      TextField(""),
                    ]
                  ),
                  Row(
                    children:[
                      Text("ID"),
                      TextField(""),
                    ]
                  )
                ]
              )
            )
          ],

        ),
      ) ,

    );
  }
}
