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
        leading: BackButton(),
        iconTheme: IconThemeData(size: 40, color: Colors.white),
        // Texto e botoes do app bar
        title:
            //Texto central
            Container(
          alignment: Alignment.center,
          child: Text(
            'Perfil',
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
//---------------------------------------------------------------------
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            children: [
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
                    SizedBox(
                      height: 15,
                    ),
                    //Nome e legenda
                    Text(
                      'Nome da pessoa',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Frase motivacional que ninguem vai ler',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //Primeira parte escrita
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.zero,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Biografia',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        'Nasci no Alasca mas resolvi fazer as comprar em Batatais',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Segunda parte escrita
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.zero,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Meu humor',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sentiment_very_dissatisfied,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sentiment_neutral,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mood,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Terceira parte escrita
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.zero,
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Meus mercados favoritos',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Cenourão',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Seu Zé',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Assaí',
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          'Carrefour',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
