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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment:
                      CrossAxisAlignment.center, //muda o icone perfil
                  children: [
                    //Primeira linha - 2 icones
                    Row(
                      //parametros da row
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          //posicao
                          alignment: AlignmentDirectional.topStart,
                          children: [
                            //Botao - PRODUTOS
                            Container(
                              decoration: const BoxDecoration(
                                border:
                                    //borda esquerda
                                    Border(
                                  left: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  //borda direita
                                  right: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  top: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                ),
                              ),
                              width: 100,
                              height: 100,
                              //Icone
                              child: IconButton(
                                icon: const Icon(Icons.local_mall),
                                iconSize: 60,
                                color: Color(0xFF292D32),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'produtos');
                                },
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          //posicao
                          alignment: AlignmentDirectional.center,
                          children: [
                            //segundp botao
                            //externo
                            Container(
                              decoration: const BoxDecoration(
                                border:
                                    //borda esquerda
                                    Border(
                                  left: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  //borda direita
                                  right: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  top: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                ),
                              ),
                              width: 100,
                              height: 100,
                              //icones
                              child: IconButton(
                                icon: const Icon(Icons.list),
                                iconSize: 60,
                                color: Color(0xFF292D32),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'listas');
                                },
                              ),
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
                          decoration: const BoxDecoration(
                            border:
                                //borda esquerda
                                Border(
                              left: BorderSide(
                                color: Color(0xFFF24C3D),
                                width: 5,
                              ),
                              //borda direita
                              right: BorderSide(
                                color: Color(0xFFF24C3D),
                                width: 5,
                              ),
                              top: BorderSide(
                                color: Color(0xFFF24C3D),
                                width: 5,
                              ),
                              bottom: BorderSide(
                                color: Color(0xFFF24C3D),
                                width: 5,
                              ),
                            ),
                          ),
                          width: 100,
                          height: 100,
                          //icone
                          child: IconButton(
                            icon: const Icon(Icons.person_off),
                            iconSize: 60,
                            color: Color(0xFF292D32),
                            onPressed: () {
                              Navigator.pushNamed(context, 'perfil');
                            },
                          ),
                        ),
                      ],
                    ),
                    //terceira linha - 2 icones
                    Row(
                      //parametros da row
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          //posicao
                          alignment: AlignmentDirectional.center,
                          children: [
                            //Botao - Saldo
                            Container(
                              decoration: const BoxDecoration(
                                border:
                                    //borda esquerda
                                    Border(
                                  left: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  //borda direita
                                  right: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  top: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                ),
                              ),
                              width: 100,
                              height: 100,
                              //icone
                              child: IconButton(
                                icon: const Icon(Icons.chat),
                                iconSize: 60,
                                color: Color(0xFF292D32),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'grupos');
                                },
                              ),
                            ),
                            //Botao Lista
                            Container(),
                          ],
                        ),
                        Stack(
                          //posicao
                          alignment: AlignmentDirectional.center,
                          children: [
                            //segundp botao
                            //externo
                            Container(
                              decoration: const BoxDecoration(
                                border:
                                    //borda esquerda
                                    Border(
                                  left: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  //borda direita
                                  right: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  top: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0xFFF24C3D),
                                    width: 5,
                                  ),
                                ),
                              ),
                              width: 100,
                              height: 100,
                              //icone
                              child: IconButton(
                                icon: const Icon(Icons.account_balance),
                                iconSize: 60,
                                color: Color(0xFF292D32),
                                onPressed: () {
                                  Navigator.pushNamed(context, 'financeiro');
                                },
                              ),
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
