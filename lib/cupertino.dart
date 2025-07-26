import 'package:flutter/cupertino.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController(); 

  void convertCurrency() {
    setState(() {
                result=double.parse(textEditingController.text)*81;
              });
  }
  



  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      backgroundColor: CupertinoColors.systemGrey,
      navigationBar:CupertinoNavigationBar (
        backgroundColor: CupertinoColors.systemGrey4 ,
        middle: Text('Currency Converter',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: CupertinoColors.white,

          ),
        ),
        //centerTitle: true,
        // actions: [
        //   IconButton(icon:const Icon(Icons.accessibility_new_sharp, color: Colors.white,),
        //   onPressed: () {
        //     // Handle power off button press
        //     //textEditingController.clear(), // Reset the result when power off is pressed
        //   }
        //   )
        // ],
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     // Handle menu button press
        //   },
        // ),
      ),
      child: Center(
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
                  color: CupertinoColors.white
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CupertinoTextField(
                controller: textEditingController,

                style: const TextStyle(
                  color: Color.fromARGB(255, 27, 43, 225),
                ),
                decoration: BoxDecoration(
                  border:  Border.all() ,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: CupertinoColors.white,
                  // label: Text("Please Enter the Amount"),
                  // labelStyle: TextStyle(
                  //   color: Colors.white,
                  //   fontSize:30,
                  // ),
                  //helperText: 'Please enter the amount in USD
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: Icon(CupertinoIcons.money_dollar, color: CupertinoColors.systemGrey),
                keyboardType: const TextInputType.numberWithOptions(decimal: true,signed: false),
              ),
            ),
            //buttons
            CupertinoButton(
              onPressed: (){
              //print(textEditingController.text);
              convertCurrency();
            },
              color: const Color.fromARGB(255, 1, 6, 12),
              child: Text("Convert"),
                
            ),
          ],
          ),
        ),
      ),
    );
  }
}