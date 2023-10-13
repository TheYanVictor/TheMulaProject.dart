import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/navigator.dart';

// Creating the main menu view

class menu_view extends StatefulWidget {
  const menu_view({super.key});

  @override
  State<menu_view> createState() => _menu_view();
}

class _menu_view extends State<menu_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //row 1 -
            //Row(                                                      //errado?
            //add code
            //children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.values(20, 50),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: IconButton(
                        icon: Icon(
                          Icons.account_balance,
                          size: 70,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'financeiro');
                        },
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 80,
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Saldo',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //],                                                     errado?
            //),                                                      errado?
            //row 2
            //Row(
            //add code
            //),
            //row 3
            //Row(
            //add code
            // ),
          ],
        ),
      ),
    );
  }
}
