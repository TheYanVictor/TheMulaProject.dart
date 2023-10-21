import 'package:flutter/material.dart';

class produtos_main_view extends StatefulWidget {
  const produtos_main_view({super.key});

  @override
  State<produtos_main_view> createState() => _produtos_main_viewState();
}

//tamanho da lista de produtos
var list = List<int>.generate(10, (i) => i + 1);

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
          //Campo de procura
          Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            //flex é a porcentagem do espaço a ser utilizado pelo widget em relação ao compartimento pai
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  //espaço do appbar
                  height: 120,
                ),
                Container(
                  //Caixa do texto
                  alignment: Alignment.centerLeft,
                  //tamanho do quadrado de busca
                  width: 300,
                  height: 90,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black38, width: 5),
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
          ),
          //espaço do appbar
          SizedBox(
            height: 30,
            child: Container(
              color: Colors.amberAccent,
            ),
          ),
          //Primeira fileira de produtos
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                )
              ],
            ),
          ),
          //Segunda fileira de produtos
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                )
              ],
            ),
          ),
          //Terceira fileira de produtos
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.black,
                      child: ListView.builder(
                        shrinkWrap: true,
                        //scrollDirection: Axis.horizontal,
                        itemBuilder: (context, list) {
                          return Container(
                            //esse container é só pra alterar a altura dos cards
                            height: 100,
                            child: Card(
                              child: Expanded(
                                child: ListTile(
                                  iconColor: Colors.orange,
                                  titleTextStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                  leading: Icon(
                                    Icons.group,
                                    size: 60,
                                  ),
                                  title: Text(
                                    'Nome legalzão',
                                    textAlign: TextAlign.center,
                                  ),
                                  onTap: () {},
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
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
