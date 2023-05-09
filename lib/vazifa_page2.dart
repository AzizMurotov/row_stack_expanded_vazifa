import 'package:flutter/material.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page1.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page3.dart';

class VazifaPage2 extends StatefulWidget {
  static const String id = "vazifa_page2";

  const VazifaPage2({Key? key}) : super(key: key);

  @override
  State<VazifaPage2> createState() => _VazifaPage2State();
}

class _VazifaPage2State extends State<VazifaPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, VazifaPage1.id);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("UI : 1"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, VazifaPage3.id);
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 5),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: const Color(0xff0D0B4F), width: 15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
            SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
            SizedBox(
              width: 5,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
