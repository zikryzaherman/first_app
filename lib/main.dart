import 'package:flutter/material.dart';
import 'package:first_app/block.dart';

void main() {
  runApp(const Towa());
}

class Towa extends StatelessWidget {
  const Towa({super.key});

  void doSomething() {
    print("Bla bla bla");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ), // IconButton
          backgroundColor: Colors.pink,
          title: const Text("TOP ME 😍!"),
        ), // AppBar
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Bye",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ), // TextStyle
                ), // Text
                const SizedBox(height: 10),
                ClipOval(
                  child: Image.asset(
                    'assets/images/daddy.jpg',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ), // Image.asset
                ), // ClipOval
                const SizedBox(height: 10),
                const Text(
                  "My Dadda",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ), // TextStyle
                ), // Text
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14,
                  ), // EdgeInsets.symmetric
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(88.88),
                  ), // BoxDecoration
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.school, size: 17, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        "Student",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                        ), // TextStyle
                      ), // Text
                    ],
                  ), // Row
                ), // Container

                const SizedBox(height: 20),

                // bardi.jpg BELOW the Student bar
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Block(
                        "Bardi",
                        "assets/images/bardi.jpg",
                        "Bardi V#1: OG Bardi",
                        colour:Colors.pink,),

                        Block(
                          "Tardi",
                          "assets/images/bardi.jpg",
                          "Bardi V#2: Tardi",
                          colour: Colors.blue,
                        ),

                        Block(
                          "Mardi",
                          "assets/images/bardi.jpg",
                          "Bardi V#3: Mardi",
                          colour: Colors.greenAccent,
                        )
                    ],
                  ), // Row
                ), // Padding
              ],
            ), // Column
          ), // Center
        ), // SingleChildScrollView
      ), // Scaffold
    ); // MaterialApp
  }
}