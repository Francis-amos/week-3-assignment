import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home_view.dart';


void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      
      theme:ThemeData(
        primaryColor:const Color.fromRGBO(37, 43, 103, 1),
        appBarTheme:const AppBarTheme(
            backgroundColor: Color.fromRGBO(37, 43, 103, 1),
            elevation: 0,
        ),
      ),
     
      home: const HomeView(),

    );
  }
}



