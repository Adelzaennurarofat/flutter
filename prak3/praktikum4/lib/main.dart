import 'package:flutter/material.dart';

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
  TextEditingController jarijariLingkaranController = TextEditingController();
  TextEditingController luasLingkaranController = TextEditingController();
  TextEditingController kelilingLingkaranController = TextEditingController();

  TextEditingController jarijariTabungController = TextEditingController();
  TextEditingController tinggiTabungController = TextEditingController();
  TextEditingController volumeTabungController = TextEditingController();
  TextEditingController luasSelimutTabungController = TextEditingController();
  TextEditingController luasPermukaanTabungController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Latihan OOP",
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Rumus Lingkaran"),
                    TextField(
                      controller: jarijariLingkaranController,
                      decoration: const InputDecoration(
                        label: Text("Jari jari Lingkaran"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (jarijariLingkaranController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text("Jari Jari Lingkaran Harap Diisi"),
                                  ),
                                );
                                return;
                              }
                              double jariJari = double.parse(
                                  jarijariLingkaranController.text);
                              Lingkaran lingkaran = Lingkaran(jariJari);
                              luasLingkaranController.text =
                                  lingkaran.getLuasLingkaran().toString();
                              kelilingLingkaranController.text =
                                  lingkaran.getKelilingLingkaran().toString();
                            });
                          },
                          child: const Text("Proses")),
                    ),
                    TextField(
                      controller: luasLingkaranController,
                      decoration: const InputDecoration(
                        label: Text("Luas Lingkaran"),
                      ),
                    ),
                    TextField(
                      controller: kelilingLingkaranController,
                      decoration: const InputDecoration(
                        label: Text("Kelilingingkaran"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Rumus Tabung"),
                    TextField(
                      controller: jarijariTabungController,
                      decoration: const InputDecoration(
                        label: Text("Jari jari Tabung"),
                      ),
                    ),
                    TextField(
                      controller: tinggiTabungController,
                      decoration: const InputDecoration(
                        label: Text("Tinggi Tabung"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (jarijariTabungController.text.isEmpty ||
                                  tinggiTabungController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        "Jari Jari Tabung dan Tinggi Tabung Harap Diisi"),
                                  ),
                                );
                                return;
                              }
                              double jariJari =
                                  double.parse(jarijariTabungController.text);
                              double tinggi =
                                  double.parse(tinggiTabungController.text);
                              Tabung tabung = Tabung(jariJari, tinggi);

                              volumeTabungController.text =
                                  tabung.getVolumeTabung().toString();

                              luasSelimutTabungController.text =
                                  tabung.getLuasSelimutTabung().toString();

                              luasPermukaanTabungController.text =
                                  tabung.getLuasPermukaanTabung().toString();
                            });
                          },
                          child: const Text("Proses")),
                    ),
                    TextField(
                      controller: volumeTabungController,
                      decoration: const InputDecoration(
                        label: Text("Volume Tabung"),
                      ),
                    ),
                    TextField(
                      controller: luasSelimutTabungController,
                      decoration: const InputDecoration(
                        label: Text("Luas Selimut Tabung"),
                      ),
                    ),
                    TextField(
                      controller: luasPermukaanTabungController,
                      decoration: const InputDecoration(
                        label: Text("Luas Permukaan Tabung"),
                      ),
                    ),
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

class Lingkaran {
  double? _jariJari;

  Lingkaran([this._jariJari]);

  double? get jariJari {
    return _jariJari;
  }

  set setJariJari(jariJari) {
    _jariJari = jariJari;
  }

  double getLuasLingkaran() {
    return 22 / 7 * _jariJari! * _jariJari!;
  }

  double getKelilingLingkaran() {
    return 2 * 22 / 7 * _jariJari!;
  }
}

class Tabung extends Lingkaran {
  double? _tinggi;

  Tabung([super._jariJari, this._tinggi]);

  double? get getTinggi {
    return _tinggi;
  }

  set setTinggi(double tinggi) {
    _tinggi = tinggi;
  }

  double getVolumeTabung() {
    return getLuasLingkaran() * _tinggi!;
  }

  double getLuasSelimutTabung() {
    return getKelilingLingkaran() * _tinggi!;
  }

  double getLuasPermukaanTabung() {
    return getLuasSelimutTabung() + 2 * getLuasLingkaran();
  }
}