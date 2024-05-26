// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';

class Dosen2 extends StatefulWidget {
  const Dosen2({Key? key}) : super(key: key);

  @override
  State<Dosen2> createState() => _Dosen2State();
}

class _Dosen2State extends State<Dosen2> {
  List<Map<String, dynamic>> dosenList = [
    {
      "nama": "Nama Dosen1",
      "email": "emaildosen1@gmail.com",
      "foto":
          "https://img.freepik.com/free-photo/image-young-asian-woman-company-worker-glasses-smiling-holding-digital-tablet-standing-white-background_1258-89376.jpg?t=st=1711783444~exp=1711787044~hmac=0246e7eaf1c2da8a17634a8addf7968b38c3a6c4a59beba43331c76373a04935&w=740"
    },
    {
      "nama": "Nama Dosen2",
      "email": "emaildosen2@gmail.com",
      "foto":
          "https://img.freepik.com/premium-photo/blows-cheeks-has-tired-expression-facial-expression-concept_1187-327646.jpg"
    },
    {
      "nama": "Nama Dosen3",
      "email": "emaildosen3@gmail.com",
      "foto":
          "https://img.freepik.com/free-photo/portrait-asian-businesswoman-glasses-looking-intrigued-camera-smiling-professional-saleswoman-staring-with-interest-pink-background_1258-89596.jpg?t=st=1711783848~exp=1711784448~hmac=36f5d7bde299f7f26f47127be2be438f194f6a3ddda5652d5b3500d4dc5deb29"
    },
    {
      "nama": "Nama Dosen4",
      "email": "emaildosen4@gmail.com",
      "foto":
          "https://img.freepik.com/premium-photo/smiling-folding-arms-beautiful-asian-woman-isolated-white-background_9028-5621.jpg?w=740"
    },
    {
      "nama": "Nama Dosen5",
      "email": "emaildosen5@gmail.com",
      "foto":
          "https://img.freepik.com/premium-photo/young-asian-man-is-smile-happy-with-with-hand-point-empty-space_216263-660.jpg?w=740"
    },
    {
      "nama": "Nama Dosen6",
      "email": "emaildosen6@gmail.com",
      "foto":
          "https://img.freepik.com/free-photo/expressive-man-is-posing-studio_176474-59832.jpg?t=st=1711787452~exp=1711788052~hmac=d43c4066d2388798e1c82a2b696738a622d58f06a08b5ecf13fff30f13ba6654"
    },
  ];
  String alamatgambar =
      "https://img.freepik.com/free-photo/image-young-asian-woman-company-worker-glasses-smiling-holding-digital-tablet-standing-white-background_1258-89376.jpg?t=st=1711783444~exp=1711787044~hmac=0246e7eaf1c2da8a17634a8addf7968b38c3a6c4a59beba43331c76373a04935&w=740";
  String namaDosen = "Nama Dosen1";
  String emailDosen = "namadosen1@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dosen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(alamatgambar), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.green,
                  child: Text(
                    namaDosen,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Text(
                    emailDosen,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              children: dosenList
                  .map((e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            namaDosen = e["nama"];
                            emailDosen = e["email"];
                            alamatgambar = e["foto"];
                          });
                        },
                        child: KontakDosen(
                          nama: e["nama"],
                          email: e["email"],
                          foto: e["foto"],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class KontakDosen extends StatelessWidget {
  final String nama;
  final String email;
  final String foto;
  const KontakDosen({
    super.key,
    required this.nama,
    required this.email,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(foto), fit: BoxFit.cover),
        color: Colors.green,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            nama,
            style: TextStyle(fontSize: 8),
          ),
          Text(
            email,
            style: TextStyle(fontSize: 8),
          ),
        ],
      ),
    );
  }
}