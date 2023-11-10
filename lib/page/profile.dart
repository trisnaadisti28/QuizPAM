import 'dart:io';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
            ),
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Data Diri",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    SizedBox(height: 40),
                    Image.asset(
                      "assets/images/Disti.jpg",
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Trisna Adisti',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '124200038',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sintang, 28 Februari 2001',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Menonton Film',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
