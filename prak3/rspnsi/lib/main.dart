import 'package:flutter/material.dart';

void main(List<String> args) {
 runApp(responsi()) ;
}
class responsi extends StatelessWidget {
  const responsi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("responsi pmo"),
      ) ,
      body: Center(child: Text("adel zaennur arofat"),
      ),
    );
  }
}