import 'dart:io';
import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({Key? key}) : super(key: key);

  @override
  State<Lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  final double phi = 3.14;
  double jari = 0;
  double _luas = 0;
  double _keliling = 0;

  void _luaslingkaran() {
    setState(() {
      _luas = phi * jari * jari;
    });
  }

  void _kelilinglingkaran() {
    setState(() {
      _keliling = 2 * phi * jari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penghitung Luas dan Keliling Lingkaran',
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/circle.png',
                    height: 100, width: 100),
                SizedBox(height: 25),
                Text(
                  "Lingkaran",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Luas",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        onChanged: (value) {
                          jari = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Jari-Jari"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        '$_luas cm',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                    onPressed: _luaslingkaran,
                    child: Column(
                      children: [Text("Hitung Luas")],
                    )),
                SizedBox(height: 50),
                Text(
                  "Keliling",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        '$_keliling cm',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                    onPressed: _kelilinglingkaran,
                    child: Column(
                      children: [Text("Hitung Keliling")],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
