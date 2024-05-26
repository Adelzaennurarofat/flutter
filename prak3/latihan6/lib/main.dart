import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:latihan6/agama.dart';
import 'package:latihan6/dataPendaftaran.dart';
import 'package:latihan6/jamDaftar.dart';
import 'package:latihan6/kemampuanBerbahasa.dart';
import 'package:latihan6/model.dart';
import 'package:latihan6/tanggalDaftar.dart';

void main(List<String> args) {
 runApp(MyApp()) ;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
          )

        )
      ),
      debugShowCheckedModeBanner: false,
      home:Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController namaControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController noTelpControler = TextEditingController();
  String? jeniskelamin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("latihan formulir"),
      ) ,
      body: Padding(padding:const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          TextField(
            controller: namaControler,
            decoration: InputDecoration(
              label: Text("Nama Lengkap"),
            ),
          ),
          TextField(
            controller: emailControler,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text("Email"),
            ),
          ),
          TextField(
            controller: noTelpControler,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              label: Text("Nomor Telpon"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child:RadioListTile(
                  title: Text("Pria"),
                  value: "Pria",
                  groupValue: jeniskelamin,
                  onChanged: (value){
                    setState(() {
                      jeniskelamin = value;
                    });
                  }


                )
                )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child:RadioListTile(
                  title: Text("Wanita"),
                  value: "Wanita",
                  groupValue: jeniskelamin,
                  onChanged: (value){
                    setState(() {
                      jeniskelamin = value;
                    });
                  }


                )
                )
            ],
          ),
          KemampuanBerbahasa(),
          Agama(),
          TanggalDaftar(),
          JamDaftar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [

ElevatedButton(

onPressed: () {

setState(() {

var namaController;
var emailController;
var noTelpController;
Pendaftaran pendaftaran = Pendaftaran(

context,

namaController.text,

emailController.text,

noTelpController.text,

jeniskelamin.toString(),

bahasaDipilihList.toString(),

agamaDipilih.toString(),

tanggalDaftarController.text,

jamDaftarController.text,

);

if (pendaftaran.sudahValid()) {

pendaftaranList.add(pendaftaran);

Navigator.push(

context,

MaterialPageRoute(

builder: (context) => DataPendaftaran(),

),

);

}

});

},

child: Text("Simpan"),

),

ElevatedButton(

onPressed: () {

Navigator.push(

context,

MaterialPageRoute(

builder: (context) => DataPendaftaran(),

),

);

},

child:

Text("Lihat Data"),
),
],
            ),
          ),
        ],
      ),
      ),
    );
  }

}
              
          
                
              
