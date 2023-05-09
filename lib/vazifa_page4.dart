import 'package:flutter/material.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page3.dart';

class VazifaPage4 extends StatefulWidget {
  static const String id = "vazifa_page4";

  const VazifaPage4({Key? key}) : super(key: key);

  @override
  State<VazifaPage4> createState() => _VazifaPage4State();
}

class _VazifaPage4State extends State<VazifaPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, VazifaPage3.id);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text("UI : 3"),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.blueAccent),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            const Text(
              "Column",
              style: TextStyle(color: Colors.blueAccent, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 10, color: Colors.black)),
                      child: const Text(
                        "Fixed height container",
                        style: TextStyle(fontSize: 20),
                      ),
                    ))
                  ],
                )),
            const SizedBox(height: 10),
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 10, color: Colors.deepPurpleAccent),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Row",
                                      style: TextStyle(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 5),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 10, color: Colors.red),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Expanded chart",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 10, color: Colors.black)),
                                child: const Text(
                                  "Fixed width container",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
