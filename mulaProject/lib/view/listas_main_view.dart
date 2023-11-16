// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class listas_main_view extends StatefulWidget {
  const listas_main_view({super.key});

  @override
  State<listas_main_view> createState() => _listas_main_viewState();
}

class _listas_main_viewState extends State<listas_main_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
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
            'Listas',
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          //Botao de home
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
//---------------------------------------------------------------------------------------------------
      body:
          //Campo de procura
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                //espaço do appbar
                height: 150,
              ),
              Container(
                //Caixa do texto
                alignment: Alignment.centerLeft,
                //tamanho do quadrado
                width: 300,
                height: 90,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38, width: 5),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(40),
                          right: Radius.circular(40),
                        ),
                      ),
                      label: Text(
                        '  Procurar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 27),
                      )),
                ),
              ),
            ],
          ),
          //listas recentes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: MediaQuery.of(context)
                    .size
                    .width, //ocupa todo o espaço do container
                child: Text(
                  'Listas Recentes',
                  style: TextStyle(color: Colors.black26, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Image(
                        image: NetworkImage(
                            'https://64.media.tumblr.com/8608853521e0b73bd2f143b6fb5c09cc/77f62d756529cff0-e1/s400x600/8ae71bc7af279115ca5dd5e6ebe5f07e6bdecc75.jpg')),
                    title: Text(
                      'Grupo',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
