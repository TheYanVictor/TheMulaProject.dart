//Definindo a classe
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';

class financeiro_main_view extends StatefulWidget {
  const financeiro_main_view({super.key});

  @override
  State<financeiro_main_view> createState() => _financeiro_main_view();
}

//Construcao da pagina
class _financeiro_main_view extends State<financeiro_main_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      //App Bar provisória
      //
      appBar: AppBar(
        backgroundColor: Color(0xFFF24C3D),
        toolbarHeight: 150,
        leading: BackButton(),
        iconTheme: IconThemeData(size: 40, color: Colors.white),
        // Texto e botoes do app bar
        title:
            //Texto central
            Container(
          alignment: Alignment.center,
          child: Text(
            'Finanças',
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          //Botao de home                                     falta alinhar para cima
          Container(
            child: IconButton(
              icon: const Icon(Icons.house),
              iconSize: 40,
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'main_menu');
              },
            ),
          ),
        ],
      ),
//------------------------------------------------------------------------------

      body: Column(
        //alinhamento da coluna principal
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Area dos cartoes
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Cartao 1
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                //Cartao 2
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                //Cartao 3
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                //Cartao 4
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                //Cartao 5
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                //Cartao 6
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                //Cartao 7
                Container(
                  height: 150,
                  width: 200,
                  //color: Colors.amberAccent,
                  //Aredondado
                  decoration: BoxDecoration(
                    color: Color.fromARGB(223, 227, 101, 17),
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(20),
                      left: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //icone do cartao
                            Container(
                              alignment: Alignment.topCenter,
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                              ),
                            ),
                            //icone do wifi
                            Container(
                              child: Transform.rotate(
                                alignment: Alignment.bottomCenter,
                                angle: 90 * pi / 180,
                                child: Icon(
                                  Icons.wifi,
                                  size: 26,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Numeros
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Container(
                              width: 200,
                              height: 20,
                              child: Text(
                                '**** **** *** 4567',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //nome
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              height: 20,
                              child: Text(
                                'Lucas Augusto',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.join_full_outlined,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //row do financeiro
          //Frase
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '   Financeiro',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
          //Primeira row de icones
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //botao 1
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                      icon: const Icon(Icons.pix),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              //botao 2
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                      icon: const Icon(Icons.attach_money_rounded),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
          //Segunda row de icones
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //botao 3
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                      icon: const Icon(Icons.card_giftcard),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              //botao 4
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
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
                      icon: const Icon(Icons.library_books),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
