import 'package:flutter/material.dart';

class Mahasiswa extends StatefulWidget {
  const Mahasiswa({Key? key}) : super(key: key);

  @override
  State<Mahasiswa> createState() => _DosenState();
}

class _DosenState extends State<Mahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mahasiswa"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/image-young-asian-woman-company-worker-glasses-smiling-holding-digital-tablet-standing-white-background_1258-89376.jpg?t=st=1711782597~exp=1711786197~hmac=01404718cefdbfd0f28c52cbda6157bf17e8014339071b94cc1b63cd1db697bf&w=740"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("00001"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Mahasiswa1"),
                Text("Alamat Mahasiswa1"),
                Text("mahasiswa1@gmail.com"),
                Text("08961"),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/premium-photo/portrait-smiling-young-asian-man-crossed-arms-chest-looking-confident-isolated-white-background_512242-3056.jpg?w=740"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("00002"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Mahasiswa2"),
                Text("Alamat Mahasiswa2"),
                Text("mahasiswa2@gmail.com"),
                Text("08962"),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/free-photo/portrait-expressive-young-man_273609-6980.jpg?t=st=1711783504~exp=1711787104~hmac=7d3829a80c9317a3d32547bedc281d136f2662b6ef71e152abcea7ce86d3f23d&w=740"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("00003"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Mahasiswa3"),
                Text("Alamat Mahasiswa3"),
                Text("mahasiswa3@gmail.com"),
                Text("08963"),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/premium-photo/young-african-american-woman-with-curly-hair-isolated-blue-background-pointing-side_1187-203139"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("00004"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Mahasiswa4"),
                Text("Alamat Mahasiswa4"),
                Text("mahasiswa4@gmail.com"),
                Text("08964"),
              ],
            ),
          ),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://img.freepik.com/premium-photo/blows-cheeks-has-tired-expression-facial-expression-concept_1187-327646"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text("00005"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Mahasiswa5"),
                Text("Alamat Mahasiswa5"),
                Text("mahasiswa5@gmail.com"),
                Text("08965"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
