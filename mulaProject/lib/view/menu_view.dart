// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:trabalho_01/main.dart';

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
      appBar: AppBar(
        toolbarHeight: 75,
        centerTitle: true,
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading: Container(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              icon: Icon(Icons.logout_outlined,
                  color: Color(0xFFF24C3D), size: 40),
            )),
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Usuário',
                style: TextStyle(fontSize: 20, color: Color(0xff666666)),
              ),
              Text('Bem Vindo!',
                  style: TextStyle(
                      fontSize: 35,
                      color: Color(0xff231E1A),
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                icon: Icon(Icons.settings, color: Color(0xFFF24C3D), size: 40),
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //NÃO MEXE (pfv)
          children: [
            Column(
              //alinhamento da coluna principal - tudo ta em uma coluna só
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment:
                            CrossAxisAlignment.center, //muda o icone perfil
                        children: [
                    
                          Stack(
                            //posicao
                            alignment: AlignmentDirectional.center,
                            
                            children: [
                              //botao unico
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                width: 320,
                                height: 150,
                                //icone
                                child: OutlinedButton(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        size: 80,
                                        color: Color(0xFF292D32),
                                      ),
                                      Text(
                                        'Perfil',
                                        style: GoogleFonts.roboto(
                                          fontSize: 25,
                                          color: Color(0xFF292D32),
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(context, 'perfil');
                                  },
                                )
                                
                                /*IconButton(
                                  icon: const Icon(Icons.person),
                                  iconSize: 60,
                                  color: Color(0xFF292D32),
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'perfil');
                                  },
                                ),*/
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                    
                          //Segunda linha - 2 icones
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
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                    width: 150,
                                    height: 150,
                                    //Icone
                                    child: OutlinedButton(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.local_mall,
                                        size: 80,
                                        color: Color(0xFF292D32),
                                      ),
                                      Text(
                                        'Produtos',
                                        style: GoogleFonts.roboto(
                                          fontSize: 25,
                                          color: Color(0xFF292D32),
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(context, 'produtos');
                                  },
                                )/*IconButton(
                                      icon: const Icon(Icons.local_mall),
                                      iconSize: 60,
                                      color: Color(0xFF292D32),
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'produtos');
                                      },
                                    ),*/
                                  ),
                                ],
                              ),
                              
                              SizedBox(width: 20,),

                              Stack(
                                //posicao
                                alignment: AlignmentDirectional.center,
                                children: [
                                  //segundp botao
                                  //externo
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                    width: 150,
                                    height: 150,
                                    //icones
                                    child: OutlinedButton(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.list,
                                        size: 80,
                                        color: Color(0xFF292D32),
                                      ),
                                      Text(
                                        'Listas',
                                        style: GoogleFonts.roboto(
                                          fontSize: 25,
                                          color: Color(0xFF292D32),
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(context, 'listas');
                                  },
                                )
                                    /*IconButton(
                                      icon: const Icon(Icons.list),
                                      iconSize: 60,
                                      color: Color(0xFF292D32),
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'listas');
                                      },
                                    ),*/
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //segunda coluna - icone de perfil
                          SizedBox(height: 20,),
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
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                    width: 150,
                                    height: 150,
                                    //icone
                                    child: OutlinedButton(
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.chat,
                                        size: 80,
                                        color: Color(0xFF292D32),
                                      ),
                                      Text(
                                        'Grupos',
                                        style: GoogleFonts.roboto(
                                          fontSize: 25,
                                          color: Color(0xFF292D32),
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(context, 'grupos');
                                  },
                                )
                                    /* IconButton(
                                      icon: const Icon(Icons.chat),
                                      iconSize: 60,
                                      color: Color(0xFF292D32),
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'grupos');
                                      },
                                    ),*/
                                  ),
                                  //Botao Lista
                                  Container(),
                                ],
                              ),

                              SizedBox(width: 20,),

                              Stack(
                                //posicao
                                alignment: AlignmentDirectional.center,
                                children: [
                                  //segundp botao
                                  //externo
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                    width: 150,
                                    height: 150,
                                    //icone
                                    child: OutlinedButton(
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_balance,
                                        size: 80,
                                        color: Color(0xFF292D32),
                                      ),
                                      Text(
                                        'Finanças',
                                        style: GoogleFonts.roboto(
                                          fontSize: 25,
                                          color: Color(0xFF292D32),
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  onPressed: () {
                                     Navigator.pushNamed(context, 'financeiro');
                                  },
                                )
                                /*IconButton(
                                      icon: const Icon(Icons.account_balance),
                                      iconSize: 60,
                                      color: Color(0xFF292D32),
                                      onPressed: () {
                                        Navigator.pushNamed(context, 'financeiro');
                                      },
                                    ),*/
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
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
