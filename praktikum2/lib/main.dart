import 'package:flutter/material.dart';

void main(List<String> args) {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
 const MyApp({Key? key}): super(key: key);

@override
Widget build(BuildContext context) {
 return const MaterialApp( 
   debugShowCheckedModeBanner: false, 
   home: Latihan2(),
  );
 }
}


class Latihan2 extends StatefulWidget {
 const Latihan2({Key? key}): super(key: key);

@override

State<Latihan2> createState() => Latihan2state();
}

class Latihan2state extends State<Latihan2> {

TextEditingController kodeBarangController=TextEditingController(); 
TextEditingController jumlahBarangController=TextEditingController();
TextEditingController caraBeliController=TextEditingController();

String namaBarang = "";
double hargaBarang =0, totalHarga= 0, diskon=0, totalBayar= 0;

List<String> hasillooping = [];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(

title: const Text("Latihan2"),
),

body: Column(

children: [

Expanded(

child: Padding(

padding: const EdgeInsets.all(8.0),

child: Container(

color: Colors.green [100],

child: ListView(

children: [

TextField(

controller: kodeBarangController,

decoration: const InputDecoration(

label: Text("Kode Barang"),
 ),

),

TextField(

controller: jumlahBarangController,

decoration: const InputDecoration(

label: Text("Jumlah Barang"), 
),

),

TextField(

controller: caraBeliController,

decoration: const InputDecoration(

label: Text("Cara Beli"),
),
),

Padding(

padding: const EdgeInsets.all(8.0),

child: Row(

mainAxisAlignment: MainAxisAlignment.spaceEvenly,

children: [
  SizedBox(
    width: 150,

child: ElevatedButton(

onPressed: () {

String kodeBarang= kodeBarangController.text;

double jumlahBarang = 
double.parse(jumlahBarangController.text); 
String caraBeli =caraBeliController.text;

switch (kodeBarang) {

case "SPT":

namaBarang = "Sepatu";

hargaBarang = 2000000;

break;

case "SND":

namaBarang ="Sandal";

hargaBarang = 100000;

break;

case "TST":

namaBarang ="T-Shirt";

hargaBarang = 150000;

break;

case "TOP":

namaBarang= "Topi";

hargaBarang = 50000;

break;

default:

namaBarang="-";

hargaBarang= 0;

break;

}

totalHarga=jumlahBarang*hargaBarang;

if (caraBeli == "T") {

diskon =10/100 *totalHarga;
 } else {

diskon = 0;
 }
 totalBayar= totalHarga- diskon;

setState(() {});
},

child: const Text("Proses"), 
),
  ),

SizedBox(

width: 150,

child: ElevatedButton(

onPressed: () {

setState(() {

kodeBarangController.text = "";

jumlahBarangController.text = "";

caraBeliController.text = "";

namaBarang = "";

hargaBarang = 0;

totalHarga = 0;

diskon = 0;

totalBayar = 0;

});

},

child: const Text("Kosongkan"),

),

),

],

),

),

Text("Nama Barang $namaBarang"),

Text("Harga Bartang $hargaBarang"),

Text("Total Harga $totalHarga"),

Text("Diskon $diskon"),

Text("Total Bayar $totalBayar"),
],
),

),
 ),
  ),

Expanded(

child: Padding(

padding: const EdgeInsets.all(8.0),

child: Container(

color: Colors.blue[100],

width: MediaQuery.of(context).size.width,

child: Wrap(

spacing: 8,

runSpacing: 8,

children: [

ElevatedButton(

onPressed: () {

hasillooping.clear();

for (var i = 0; i < 100; i++) {

hasillooping.add(i.toString());

}

setState(() {});
},

child: const Text("Looping dengan For"),
 ),

ElevatedButton(

onPressed: (){

hasillooping.clear();

int bil = 1;

while (bil< 100) {

bil+= 5;

hasillooping.add(bil.toString());
}
setState((){});
},
child: const Text("Looping dengan While"), 
),

ElevatedButton(

onPressed: () {

hasillooping.clear();

List<String> warna = [

"Merah",

"Kuning",

"Hijau",

"Biru",

"Ungu",

"Jingga",

"Abu Abu",

];

for (var element in warna) {

hasillooping.add((element.toString().contains("a")) 
? element
 :"-");

}

setState(() {});

},

child: const Text("Looping dengan For Each"), 
),

Text("Hasil Looping $hasillooping")
],
),
),
),
),
],
),
);
}
}