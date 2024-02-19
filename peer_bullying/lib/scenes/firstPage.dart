import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ilk sayfa demo"),
        actions: [],
      ),
      body: Column(children: <Widget>[
        Text("video"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                print("test1");
              },
              icon: Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),
            ),
            IconButton(
              onPressed: () {
                print("test2");
              },
              icon: Icon(
                Icons.clear,
                color: Colors.red,
                size: 100,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
