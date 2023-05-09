import 'package:flutter/material.dart';
import 'package:row_stack_expanded_vazifa/home_page.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page1.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page2.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page3.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        VazifaPage1.id:(context)=>const VazifaPage1(),
        VazifaPage2.id:(context)=>const VazifaPage2(),
        VazifaPage3.id:(context)=>const VazifaPage3(),
        VazifaPage4.id:(context)=>const VazifaPage4(),
      },
    );
  }
}
