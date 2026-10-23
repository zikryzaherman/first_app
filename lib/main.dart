import 'package:flutter/material.dart';

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
          ),
          backgroundColor: Colors.pink,
          title: const Text("TOP ME 😍!"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Bye",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ClipOval(
                child: Image.asset(
                  'assets/images/daddy.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}