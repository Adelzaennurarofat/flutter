import 'package:flutter/material.dart';
import 'package:prak3/Dosen.dart';
import 'package:prak3/mahasiswa.dart';
import 'package:prak3/Matakuliah.dart';
import 'package:prak3/Nilai.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  String alamatgambar =
      "https://th.bing.com/th?id=OIP.ebiKIsL8Ywf7XheWSRUWqwAAAA&w=250&h=250&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BottomNavigatonBar dan Navigation",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Oleh Adel zaennur arofat"),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       image: DecorationImage(
            //           image: NetworkImage(alamatgambar), fit: BoxFit.cover)),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });

          panggilHalaman(value);
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.green[100],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Dosen"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Mahasiswa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.subject), label: "Matakuliah"),
          BottomNavigationBarItem(icon: Icon(Icons.score), label: "Nilai"),
        ],
      ),
    );
  }

  void panggilHalaman(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Dosen(),
        ),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Mahasiswa(),
        ),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Matakuliah(),
        ),
      );
    } else if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Nilai(),
        ),
      );
    }
  }
}

