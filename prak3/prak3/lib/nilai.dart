import 'package:flutter/material.dart';

class Nilai extends StatefulWidget {
  const Nilai({Key? key}) : super(key: key);

  @override
  State<Nilai> createState() => _DosenState();
}

class _DosenState extends State<Nilai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nilai"),
      ),
      body: Center(child: Text("Ini adalah halaman Nilai")),
    );
  }
}

