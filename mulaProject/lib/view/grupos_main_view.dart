import 'package:flutter/material.dart';

class grupos_main_view extends StatefulWidget {
  const grupos_main_view({super.key});

  @override
  State<grupos_main_view> createState() => _grupos_main_viewState();
}

//tamanho da lista de contatos
var list = List<int>.generate(10, (i) => i + 1);

class _grupos_main_viewState extends State<grupos_main_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      //App Bar
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
            'Grupos',
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

      //
      //Acho que aqui vai ter que ser parecido com lista que o Plotze mostrou
      //

      body:

          //Coluna que vai organizar toda a tela
          Column(
        //alinhamento
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Espaco do comeco
          SizedBox(
            height: 50,
          ),
          //Campo de procura
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 95,
                width: 290,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20),
                        right: Radius.circular(20),
                      ),
                    ),
                    label: Text(
                      'Procurar',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 350,
                child: ListView.builder(
                  itemBuilder: (context, list) {
                    return Container(
                      //esse container é só pra alterar a altura dos cards
                      height: 100,
                      child: Card(
                        child: ListTile(
                          iconColor: Colors.orange,
                          titleTextStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                          leading: Icon(
                            Icons.group,
                            size: 60,
                          ),
                          title: Text(
                            'Nome legalzão',
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, 'perfil');
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
