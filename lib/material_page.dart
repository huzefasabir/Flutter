// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class MaterialPagesState extends StatefulWidget{
  const MaterialPagesState({super.key});
  @override
  State<MaterialPagesState> createState() => _MaterialPagesState();
}

class _MaterialPagesState extends State<MaterialPagesState> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController(); 

  void convertCurrency() {
    setState(() {
                result=double.parse(textEditingController.text)*81;
              });
  }
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

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
      appBar:AppBar(
        backgroundColor: Colors.blueGrey ,
        elevation: 10,
        title: const Text('Currency Converter',
        
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: Colors.white,

          ),
        ),
        centerTitle: true,
        // actions: [
        //   IconButton(icon:const Icon(Icons.accessibility_new_sharp, color: Colors.white,),
        //   onPressed: () {
        //     // Handle power off button press
        //     //textEditingController.clear(), // Reset the result when power off is pressed
        //   }
        //   )
        // ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          //mainAxisAlignment: MainAxisAlignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //padding: EdgeInsets.all(10.0) ,
              //color: Colors.black,
              Text(result.toString(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: textEditingController,

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
                keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: false),
              ),
            ),
            //buttons
            ElevatedButton(
              onPressed: (){
              //print(textEditingController.text);
              convertCurrency();
            },
            style: TextButton.styleFrom(
              elevation: (100),
              backgroundColor: (Colors.black),
              foregroundColor: (Colors.white),
              fixedSize: (Size(380, 50)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
              child: Text("Convert"),
            ),
          ],
          ),
        ),
      ),
    );
  }
}
