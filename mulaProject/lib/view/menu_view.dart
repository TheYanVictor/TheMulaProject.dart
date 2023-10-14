import 'dart:html';

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

          //alinhamento da coluna principal
          crossAxisAlignment: CrossAxisAlignment.center,
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
              //crossAxisAlignment:CrossAxisAlignment.values(20, 50),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Primeira linha - 2 icones
                    Row(
                      //parametros da row
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //primeiro botao
                        Container(),
                        //segundo botao
                        Container(),
                      ],
                    ),
                    //segunda coluna - icone de perfil
                    Stack(
                      //parametros da row
                      alignment: AlignmentDirectional.center,
                      //botao
                      children: [
                        Container(),
                      ],
                    ),
                    //terceira fileira de icons
                    Row(
                      //parametros da row
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //primeiro icone
                        Container(),
                        //segundo icone
                        Container(),
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
