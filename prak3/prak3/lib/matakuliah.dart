import 'package:flutter/material.dart';

class Matakuliah extends StatefulWidget {
  const Matakuliah({Key? key}) : super(key: key);

  @override
  State<Matakuliah> createState() => _DosenState();
}

class _DosenState extends State<Matakuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matakuliah"),
      ),
      body: Column(
        children: [
          Center(child: Text("Ini adalah halaman Matakuliah")),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.exit_to_app,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}

