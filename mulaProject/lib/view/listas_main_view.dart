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
      //
      //App Bar
      //
      appBar: AppBar(
        backgroundColor: Colors.transparent, //isso
        elevation: 0, //e isso fazem o appbar ficar invisivel - magica!
        toolbarHeight: 100,

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
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            //
            //Texto central
            //
            Text(
              'Listas',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            //
            //Botao de home                                     falta alinhar para cima
            //
            Container(
              child: IconButton(
                icon: const Icon(Icons.house),
                iconSize: 40,
                color: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, 'main_menu');
                },
              ),
            ),
          ],
        ),
      ),

      //
      //Main Body
      //
      body:
          //      Campo de procura
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
                //color: Colors.black,
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
        ],
      ),
    );
  }
}
