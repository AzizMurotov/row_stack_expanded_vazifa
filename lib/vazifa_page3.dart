import 'package:flutter/material.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page2.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page4.dart';

class VazifaPage3 extends StatefulWidget {
  static const String id = "vazifa_page3";

  const VazifaPage3({Key? key}) : super(key: key);

  @override
  State<VazifaPage3> createState() => _VazifaPage3State();
}

class _VazifaPage3State extends State<VazifaPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, VazifaPage2.id);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("UI : 2"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, VazifaPage4.id);
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 10, left: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(width: 15, color: const Color(0xff0D0B4F)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 5, color: Colors.black)),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
