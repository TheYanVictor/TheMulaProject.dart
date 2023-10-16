import 'package:flutter/material.dart';

class produtos_main_view extends StatefulWidget {
  const produtos_main_view({super.key});

  @override
  State<produtos_main_view> createState() => _produtos_main_viewState();
}

class _produtos_main_viewState extends State<produtos_main_view> {
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
              'Produtos',
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

      body:
          //      Campo de procura
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
    );
  }
}
