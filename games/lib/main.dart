import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Visibility(
              visible: visibility,
              child: const Text("Noice one"),
            ),
            FloatingActionButton(onPressed: () {
              visibility = !visibility;
            })
          ],
        ),
      ),
    );
  }
}
