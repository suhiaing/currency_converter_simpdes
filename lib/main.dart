import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Welcome to my converter app!",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                const SizedBox(height: 50),
                const Text("' 0 '",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.transparent, width: 0.0),
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Add the amount you want to convert"),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print("Clicked");
                      }
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        minimumSize: MaterialStatePropertyAll(Size(130, 50))),
                    child: const Text("Click"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
