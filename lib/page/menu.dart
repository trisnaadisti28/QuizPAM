import 'dart:io';
import 'package:flutter/material.dart';
import 'package:quiz_mobile_a_124200038_trisnaadisti/lingkaran.dart';
import 'package:quiz_mobile_a_124200038_trisnaadisti/persegi.dart';
import 'package:quiz_mobile_a_124200038_trisnaadisti/segitiga.dart';
import 'package:quiz_mobile_a_124200038_trisnaadisti/trapesium.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Trapesium();
                              }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                                ImageIcon(
                                  AssetImage("assets/images/trapezoid.png"),
                                  color: Colors.lightBlueAccent,
                                  size: 70,
                                ),
                                Text(
                                  "Trapesium",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Segitiga();
                              }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                                ImageIcon(
                                  AssetImage("assets/images/triangle.png"),
                                  color: Colors.lightBlueAccent,
                                  size: 70,
                                ),
                                Text(
                                  "Segitiga",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Lingkaran();
                              }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                                ImageIcon(
                                  AssetImage("assets/images/circle.png"),
                                  color: Colors.lightBlueAccent,
                                  size: 60,
                                ),
                                Text(
                                  "Lingkaran",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return Persegi();
                              }));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Column(children: [
                                ImageIcon(
                                  AssetImage("assets/images/square.png"),
                                  color: Colors.lightBlueAccent,
                                  size: 60,
                                ),
                                Text(
                                  "Persegi",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ])),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
