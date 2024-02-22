import 'package:flutter/material.dart';

class Fertilizer extends StatefulWidget {
  const Fertilizer({super.key});

  @override
  State<Fertilizer> createState() => _FertilizerComp();
}

class _FertilizerComp extends State<Fertilizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 141, 7),
        title: Text("Fertilizer"),
      ),
    );
  }
}
