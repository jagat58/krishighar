import 'package:flutter/material.dart';

class Seed extends StatefulWidget {
  const Seed({super.key});

  @override
  State<Seed> createState() => _SeedComp();
}

class _SeedComp extends State<Seed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 141, 7),
        title: Text("Seeds"),
      ),
    );
  }
}
