//Definindo a classe
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
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          // Area dos cartoes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //color: Colors.black,
                width: 200,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      height: 150,
                      width: 200,
                      child: Card(
                        semanticContainer: true,
                        color: Colors.amberAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Text(
                          'Card',
                          style: TextStyle(fontSize: 40),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
