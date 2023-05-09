import 'package:flutter/material.dart';
import 'package:row_stack_expanded_vazifa/vazifa_page1.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter demo home page"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushReplacementNamed(context, VazifaPage1.id);
          }, icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                color: Colors.deepPurpleAccent,
                child: Center(
                  child: Text("lg : 12"),
                ),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "xs : 6",
                      ),
                      Text("md : 3")
                    ],
                  )),
                ),
              ),
              Expanded(
                  child: Container(
                height: 100,
                color: Colors.amber,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "xs : 6",
                    ),
                    Text("md : 3")
                  ],
                )),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "xs : 6",
                          ),
                          Text("md : 3")
                        ],
                      )),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "xs : 6",
                            ),
                            Text("md : 3")
                          ],
                        )),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
