import 'package:flutter/material.dart';

class agroChemical extends StatefulWidget {
  const agroChemical({super.key});

  @override
  State<agroChemical> createState() => _agroChemicalComp();
}

class _agroChemicalComp extends State<agroChemical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 141, 7),
        title: Text("Agrochemical"),
      ),
    );
  }
}
