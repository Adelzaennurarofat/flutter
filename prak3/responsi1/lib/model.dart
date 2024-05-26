import 'package:flutter/material.dart';

class nilaiMahasiswa{
  late BuildContext context;
  String nim = "";
  String nama= "";
  String kelas= "";
  String nilai= "";
  String teori= "";
  String nilaipraktek = "";
  String totalnilai = "";
  String nilaihuruf ="";


  boolsudahValid(){
if (nim.isEmpty){
  tampilkanPesan("nim Wajib Diisi");
  return false;
}
if (nama.isEmpty){
  tampilkanPesan("nama Wajib Diisi");
  return false;
}
if (kelas.isEmpty){
  tampilkanPesan("kelas Wajib Diisi");
  return false;
}
var nilaiteori;
if (nilaiteori.isEmpty){
  tampilkanPesan("nilaiteori Wajib Diisi");
  return false;
}
if (nilaipraktek.isEmpty){
  tampilkanPesan("nilaipraktek Wajib Diisi");
  return false;
}

  }
  
  void tampilkanPesan(String s) {}

}
