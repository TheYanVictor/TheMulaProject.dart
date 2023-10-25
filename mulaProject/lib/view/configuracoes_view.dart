import 'package:flutter/material.dart';

class configuracoes_view extends StatefulWidget {
  const configuracoes_view({super.key});

  @override
  State<configuracoes_view> createState() => _configuracoes_viewState();
}

class _configuracoes_viewState extends State<configuracoes_view> {
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
            'Configurações',
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //espaço do appbar
          SizedBox(
            height: 50,
          ),
          //itens
          Expanded(
            flex: 9,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Align(alignment: Alignment.centerLeft),
                //Compras
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Compras',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                //Método de Pagamento
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Métodos de Pagamento',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                //Ajuda
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Ajuda',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                //Promoções
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Promoções',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                //Notificações
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Notificações',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                //Privacidade
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Privacidade',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                //Idiomas
                Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.zero,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: OutlinedButton(
                    child: Text(
                      'Idiomas',
                      //textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
