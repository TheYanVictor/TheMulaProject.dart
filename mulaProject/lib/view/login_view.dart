// ignore_for_file: prefer_const_constructors
//flutter pub add google_fonts
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Icon(Icons.account_circle,
              size: 100, color: Color.fromARGB(255, 232, 158, 60)),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Email'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Senha'),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'main_menu',
                );
              },
              child: Text('entrar'),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromARGB(78, 232, 157, 60),
                  foregroundColor: Colors.black,
                  minimumSize: Size(120, 60))),
          SizedBox(height: 30,),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'main_menu');
              },
              child: Text('Não possui uma conta? Cadastre-se',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Dela Gothic One')),
              style: TextButton.styleFrom(foregroundColor: Colors.black))
        ],
      ),
    ));
  }
}


//teste