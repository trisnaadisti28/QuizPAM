import 'dart:io';
import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key}) : super(key: key);

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  double tinggi = 0;
  double a = 0;
  double b = 0;
  double _luas = 0;
  double sisi1 = 0;
  double sisi2 = 0;
  double sisi3 = 0;
  double sisi4 = 0;
  double _keliling = 0;

  void _luastrapesium() {
    setState(() {
      _luas = 0.5 * (a + b) * tinggi;
    });
  }

  void _kelilingtrapesium() {
    setState(() {
      _keliling = sisi1 + sisi2 + sisi3 + sisi4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penghitung Luas dan Keliling Trapesium',
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
                Image.asset('assets/images/trapezoid.png',
                    height: 100, width: 100),
                SizedBox(height: 15),
                Text(
                  "Trapesium",
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
                SizedBox(height: 20),
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
                          a = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Sisi Sejajar 1"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                          b = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Sisi Sejajar 2"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                          tinggi = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Tinggi Trapesium"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: _luastrapesium,
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
                      child: TextField(
                        onChanged: (value) {
                          sisi1 = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Sisi 1"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                          sisi2 = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Sisi 2"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                          sisi3 = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Sisi 3"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                          sisi4 = double.parse(value);
                        },
                        enabled: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "(cm)",
                          label: Text("Panjang Sisi 4"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: _kelilingtrapesium,
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
