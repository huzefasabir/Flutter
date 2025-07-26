
import 'package:currency/cupertino.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(const CuperMyApp());
}
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return  MaterialApp(
//       home: MaterialPagesState(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TodoListScreen(),
//     );
//   }
// }

class CuperMyApp extends StatelessWidget{
  const CuperMyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}