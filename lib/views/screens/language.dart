import 'package:flutter/material.dart';

import '../../models/core/button.darty';

class MyLanguage extends StatelessWidget {
  const MyLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text("Choose your language",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Container(
          padding:const EdgeInsets.symmetric(horizontal:100),
        width:double.infinity,
            
        child:const MyButton(txt:'Ar'),
        ),
          ],),
      
      ),
    );
  }
}
