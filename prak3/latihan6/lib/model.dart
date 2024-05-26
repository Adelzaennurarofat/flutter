import 'package:flutter/material.dart';

class Pendaftaran {

BuildContext context;

String nama = "";

String email = "";

String noTelp = "";

String jenisKelamin = "";

String bahasa = "";

String agama = "";

String tanggalDaftar = "";

String jamDaftar = "";

Pendaftaran (


this.context,

this.nama,

this.email,

this.noTelp,

this.jenisKelamin,

this.bahasa,

this.agama,

this.tanggalDaftar,

this.jamDaftar,
);

bool sudahValid() {

if (nama.isEmpty) {

tampilkanPesan ("Nama Wajib Diisi");

return false;
}
if (email.isEmpty) {

tampilkanPesan("Email Wajib Diisi");

return false;
}
if (noTelp.isEmpty) {



tampilkanPesan ("Nomor Telpon Wajib Diisi");

return false;
}
if (jenisKelamin == "null") {



tampilkanPesan ("Silakan pilih salah satu jenis kelamin");

return false;
}
if (bahasa == "[]") {



tampilkanPesan("Wajib Memilih Minimal Satu Bahasa ");

return false;
}

if (agama == "null") {



tampilkanPesan("Wajib Memilih Satu Agama");

return false;
}
if (tanggalDaftar.isEmpty) {



tampilkanPesan ("Tanggal Daftar Wajib Diisi");

return false;
}

if (jamDaftar.isEmpty) {

tampilkanPesan("Jam Daftar Wajib Diisi");
return false;
}
return true;
}
void tampilkanPesan (String s) {

ScaffoldMessenger.of(context).showSnackBar (SnackBar(content: Text(s)));

}

}

List<Pendaftaran> pendaftaranList = [];