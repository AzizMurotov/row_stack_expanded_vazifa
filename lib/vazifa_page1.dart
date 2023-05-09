import 'package:flutter/material.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page2.dart';

import 'home_page.dart';

class VazifaPage1 extends StatefulWidget {
  static const String id = "vazifa_page1";

  const VazifaPage1({Key? key}) : super(key: key);

  @override
  State<VazifaPage1> createState() => _VazifaPage1State();
}

class _VazifaPage1State extends State<VazifaPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("flutter demo home page"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, VazifaPage2.id);
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      height: double.infinity,
                      color: Colors.lightGreen,
                       child: const Text("Logo Area"),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                     height: double.infinity,
                      color: Colors.green,
                      child: const Text("header Area"),
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex:2,
                    child: Container(
                  height: double.infinity,
                  color: Colors.blue,
                      child: const Text("Left Content Area"),
                ),),
                Expanded(
                  flex:1,
                  child: Container(
                    height: double.infinity,
                    color: Colors.red,
                    child: const Text("Right Content Area"),
                  ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
