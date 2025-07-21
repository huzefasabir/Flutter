import 'package:flutter/material.dart';

class MaterialPages extends StatelessWidget{
  const MaterialPages({super.key});

  @override
  Widget build (BuildContext context){
    final border= OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                );
    return Scaffold(
      //backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('0',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.white
              ),
            ),
            TextField(
              style: const TextStyle(
                color: Color.fromARGB(255, 27, 43, 225),
              ),
              decoration: InputDecoration(
                // label: Text("Please Enter the Amount"),
                // labelStyle: TextStyle(
                //   color: Colors.white,
                //   fontSize:30,
                // ),
                //helperText: 'Please enter the amount in USD'
                hintText: 'Please enter the amount in USD',
                hintStyle: const TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on, color: Colors.black,),//size: 25,),
                fillColor: Colors.white,
                filled: true,
                focusedBorder:border,
                enabledBorder:border,
              ),
            ),
          ],
        ),
      ),
    );
  }
}