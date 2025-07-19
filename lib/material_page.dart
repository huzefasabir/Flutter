import 'package:flutter/material.dart';

class MaterialPages extends StatelessWidget{
  const MaterialPages({super.key});

  @override
  Widget build (BuildContext context){
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("0"),
          ],
        ),
      ),
    );

  }
}