import 'package:flutter/material.dart';

TextEditingController tanggalDaftarController = TextEditingController();

class TanggalDaftar extends StatefulWidget {

const TanggalDaftar({super.key});
@override
State <TanggalDaftar> createState() => TanggalDaftarState();

}



class TanggalDaftarState extends State<TanggalDaftar> {

@override

Widget build(BuildContext context) {

return TextField(

controller: tanggalDaftarController,

decoration: InputDecoration(

label: Text("Tanggal Daftar"),

suffixIcon: IconButton(

onPressed: () {

pilihTanggal();

},

icon: Icon(Icons.date_range),

),
),
);

}

Future<void> pilihTanggal() async {

DateTime? tglDidapat;

tglDidapat =await showDatePicker(

context: context,

firstDate: DateTime (2024),

lastDate: DateTime(2025),

);

if (tglDidapat.toString() != "null") {

tanggalDaftarController.text = tglDidapat.toString().substring(0, 10);

}

}

}

