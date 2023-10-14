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
        padding: EdgeInsets.all(95),
        child: Column(
          //alinhamento da coluna principal - tudo ta em uma coluna só
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment:CrossAxisAlignment.values(20, 50),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Primeira linha - 2 icones
                    Row(
                      //parametros da row
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          //posicao
                          alignment: AlignmentDirectional.center,
                          children: [
                            //primeiro botao
                            Container(
                              color: Colors.amberAccent,
                              width: 100,
                              height: 100,
                            ),
                            //segundo botao
                            Container(
                              color: Colors.black,
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                        Stack(
                          //posicao
                          alignment: AlignmentDirectional.center,
                          children: [
                            //primeiro botao
                            Container(
                              color: Colors.amberAccent,
                              width: 100,
                              height: 100,
                            ),
                            //segundo botao
                            Container(
                              color: Colors.black,
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //segunda coluna - icone de perfil
                    Stack(
                      //posicao
                      alignment: AlignmentDirectional.center,
                      children: [
                        //botao unico
                        Container(
                          color: Colors.amberAccent,
                          width: 150,
                          height: 150,
                        ),
                        Container(
                          color: Colors.black,
                          height: 90,
                          width: 90,
                        ),
                      ],
                    ),
                    //primeiro botao da terceira fileira
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          //parametros da row
                          alignment: AlignmentDirectional.center,
                          children: [
                            //primeiro icone
                            Container(
                              color: Colors.amberAccent,
                              width: 100,
                              height: 100,
                            ),
                            //segundo icone
                            Container(
                              color: Colors.black,
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                        //segundo botao da terceira fileira
                        Stack(
                          //parametros da row
                          alignment: AlignmentDirectional.center,
                          children: [
                            //primeiro icone
                            Container(
                              color: Colors.amberAccent,
                              width: 100,
                              height: 100,
                            ),
                            //segundo icone
                            Container(
                              color: Colors.black,
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
