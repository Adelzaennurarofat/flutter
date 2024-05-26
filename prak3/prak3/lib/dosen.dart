import 'package:flutter/material.dart';

class Dosen extends StatefulWidget {
  const Dosen({Key? key}) : super(key: key);

  @override
  State<Dosen> createState() => _DosenState();
}

class _DosenState extends State<Dosen> {
  String alamatgambar =
  "https://img.freepik.com/free-photo/image-young-asian-woman-company-worker-glasses- smiling-holding-digital-tablet-standing-white-background_1258-89376.jpg?w=740&t=st= 1710718673-exp=1710711273-hmac-41d392af726a600fd3751e56232d789eeabaeced 83a52e0dc742c34f25184c51";
      
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
          ),
          Expanded(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: [
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      alamatgambar =
                         "https://img.freepik.com/free-photo/image-young-asian-woman- company-worker-glasses-smiling-holding-digital-tablet-standing-white-background_1258- 89376.jpg?w=740&t=st=1710710673~exp=1710711273~hmac= 41d392af726a600fd3751656232d789eeaba0c0d83a52e0dc742c34f25184c51";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-photo/image-young-asian-woman-company-worker-glasses-smiling-holding-digital-tablet-standing-white-background_1258-89376.jpg?t=st=1711783444~exp=1711787044~hmac=0246e7eaf1c2da8a17634a8addf7968b38c3a6c4a59beba43331c76373a04935&w=740.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.green,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      alamatgambar =
                          "https://img.freepik.com/premium-photo/blows-cheeks-has-tired-expression-facial-expression-concept_1187-327646.jpg";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/premium-photo/blows-cheeks-has-tired-expression-facial-expression-concept_1187-327646.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      alamatgambar =
                          "https://img.freepik.com/free-photo/portrait-asian-businesswoman-glasses-looking-intrigued-camera-smiling-professional-saleswoman-staring-with-interest-pink-background_1258-89596.jpg?t=st=1711783848~exp=1711784448~hmac=36f5d7bde299f7f26f47127be2be438f194f6a3ddda5652d5b3500d4dc5deb29.jpg";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-photo/portrait-asian-businesswoman-glasses-looking-intrigued-camera-smiling-professional-saleswoman-staring-with-interest-pink-background_1258-89596.jpg?t=st=1711783848~exp=1711784448~hmac=36f5d7bde299f7f26f47127be2be438f194f6a3ddda5652d5b3500d4dc5deb29.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.orange,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      alamatgambar =
                          "https://img.freepik.com/premium-photo/smiling-folding-arms-beautiful-asian-woman-isolated-white-background_9028-5621.jpg?w=740";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/premium-photo/smiling-folding-arms-beautiful-asian-woman-isolated-white-background_9028-5621.jpg?w=740"),
                          fit: BoxFit.cover),
                      color: Colors.amber,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      alamatgambar =
                          "https://img.freepik.com/premium-photo/young-asian-man-is-smile-happy-with-with-hand-point-empty-space_216263-660.jpg?w=740";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/premium-photo/young-asian-man-is-smile-happy-with-with-hand-point-empty-space_216263-660.jpg?w=740"),
                          fit: BoxFit.cover),
                      color: Colors.yellow,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      alamatgambar =
                          "https://img.freepik.com/free-photo/expressive-man-is-posing-studio_176474-59832.jpg?t=st=1711787452~exp=1711788052~hmac=d43c4066d2388798e1c82a2b696738a622d58f06a08b5ecf13fff30f13ba6654";
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(2),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://img.freepik.com/free-photo/expressive-man-is-posing-studio_176474-59832.jpg?t=st=1711787452~exp=1711788052~hmac=d43c4066d2388798e1c82a2b696738a622d58f06a08b5ecf13fff30f13ba6654"),
                          fit: BoxFit.cover),
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
