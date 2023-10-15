import 'package:flutter/material.dart';

class perfil_main_view extends StatefulWidget {
  const perfil_main_view({super.key});

  @override
  State<perfil_main_view> createState() => _perfil_main_viewState();
}

class _perfil_main_viewState extends State<perfil_main_view> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'Perfil',
              style: TextStyle(color: Colors.white),
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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            //Stack para sobrepor a imagem do icone
            //
            Stack(
              alignment: Alignment.topCenter,
              children: [
                //
                //Container de alinhamento da imagem
                //
                Container(
                  alignment: Alignment.topCenter,
                  child:
                      //
                      //IMAGEM
                      Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/78473e74-db74-4dea-99e2-126f30e136bf/deh9wem-ccce3dcb-0348-42ce-9f1d-6b313fec1304.png/v1/fit/w_828,h_622,q_70,strp/whitebeard_by_newgate_arts_deh9wem-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9Mjg4MCIsInBhdGgiOiJcL2ZcLzc4NDczZTc0LWRiNzQtNGRlYS05OWUyLTEyNmYzMGUxMzZiZlwvZGVoOXdlbS1jY2NlM2RjYi0wMzQ4LTQyY2UtOWYxZC02YjMxM2ZlYzEzMDQucG5nIiwid2lkdGgiOiI8PTM4NDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.JY1RWVsHL0a2wMt5KWDwEe0DIuwZj3OJq5q-R6YAFQk',
                          fit: BoxFit.cover,
                          //
                          //Tamanho da imagem
                          //
                          height: 170,
                          width: 170,
                        ),
                      ),
                      //
                      //Nome e legenda
                      //
                      Text(
                        'Nome da pessoa',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'Frase motivacional que ninguem vai ler',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
