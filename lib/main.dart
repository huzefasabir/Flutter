
// import 'package:currency/material_page.dart';
import 'package:flutter/material.dart';
import 'package:currency/todo_list.dart';
// void main(){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context){
//     return  MaterialApp(
//       home: MaterialPages(),
//       routes: {
//         '/todo': (context) => const TodoListScreen(),
//       },
//     );
//   }
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListScreen(),
    );
  }
}
