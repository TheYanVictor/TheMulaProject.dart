//Definindo a classe
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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

        //
        // Texto e botoes do app bar
        //
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            //Voltar para a pagina anterior                      falta alinhar para cima
            //
            Container(
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 40,
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            //
            //Texto central
            //
            Text(
              'Financeiro',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            //
            //Botao de home                                     falta alinhar para cima
            //
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
      ),
//------------------------------------------------------------------------------

      body: Column(
        //alinhamento da coluna principal
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Area dos cartoes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //color: Colors.black,
                width: 200,
                height: 150,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, position) {
                    return Card(
                      color: Colors.amberAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          'Card',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
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
                      icon: const Icon(Icons.card_giftcard),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {
                        Navigator.pushNamed(context, 'produtos');
                      },
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
                      icon: const Icon(Icons.card_giftcard),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {
                        Navigator.pushNamed(context, 'produtos');
                      },
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
                      onPressed: () {
                        Navigator.pushNamed(context, 'produtos');
                      },
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
                      icon: const Icon(Icons.card_giftcard),
                      iconSize: 60,
                      color: Color(0xFF292D32),
                      onPressed: () {
                        Navigator.pushNamed(context, 'produtos');
                      },
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
