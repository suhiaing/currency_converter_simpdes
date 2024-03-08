import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome to my converter app!",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 0.0),
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Add the amount you want to convert"),
                ),
                const SizedBox(height: 20),
                TextButton(onPressed: () {}, child: const Text("Click"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
