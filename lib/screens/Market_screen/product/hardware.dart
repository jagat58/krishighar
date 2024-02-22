import 'package:flutter/material.dart';

class Hardware extends StatefulWidget {
  const Hardware({super.key});

  @override
  State<Hardware> createState() => _hardwareComp();
}

class _hardwareComp extends State<Hardware> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 141, 7),
        title: Text("hardware"),
      ),
    );
  }
}
