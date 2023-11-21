// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_01/controller/grupo_controller.dart';
import 'package:trabalho_01/controller/login_controller.dart';
import 'package:trabalho_01/model/grupo.dart';

class grupos_main_view extends StatefulWidget {
  const grupos_main_view({super.key});

  @override
  State<grupos_main_view> createState() => _grupos_main_viewState();
}

//tamanho da lista de contatos
var list = List<int>.generate(10, (i) => i + 1);

//Recuperar o texto do campo de texto
final TextEditingController tituloController = TextEditingController();
final TextEditingController descricaoController = TextEditingController();

class _grupos_main_viewState extends State<grupos_main_view> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final dados = await FirebaseFirestore.instance.collection('grupos').get();
    // Use dados here
  }

  @override
  Widget build(BuildContext context) {
    @override
    void dispose() {
      // Limpa o controlador quando a tela for encerrada
      tituloController.dispose();
      super.dispose();
    }

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
//-----------------------------------------------------------------
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
              //Pop up no canto direito inferior da tela para adicionar um novo grupo
              FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 231, 22, 22),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          'Adicionar Grupo',
                          style: TextStyle(color: Colors.black),
                        ),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              //Campo de texto para o titulo do grupo
                              TextField(
                                controller: tituloController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(
                                      left: const Radius.circular(20),
                                      right: const Radius.circular(20),
                                    ),
                                  ),
                                  labelText: 'Titulo',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              //Campo de texto para a descricao do grupo
                              TextField(
                                controller: descricaoController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(
                                      left: const Radius.circular(20),
                                      right: const Radius.circular(20),
                                    ),
                                  ),
                                  labelText: 'Descrição',
                                  labelStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          //Botao de cancelar
                          TextButton(
                            child: const Text('Cancelar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          //Botao de adicionar
                          TextButton(
                            child: const Text('Adicionar'),
                            onPressed: () {
                              Grupo_Controller().adicionar(
                                context,
                                Grupo(
                                    Random().nextInt(100).toString(),
                                    tituloController.text,
                                    descricaoController.text),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
          //Listar todos os grupos cadastrados no firebase e mostrar na tela
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                itemBuilder: (context, index) {
                  String id = LoginController().usuarioLogado().toString();
                  dynamic item = Grupo_Controller().listar().doc[index].data();
                  return ListTile(
                    leading: Icon(Icons.description),
                    title: Text(item['titulo']),
                    subtitle: Text(item['descricao']),
                    onTap: () {
                      tituloController.text = item['titulo'];
                      descricaoController.text = item['descricao'];
                      Grupo_Controller().listar();
                    },
                  );
                },
                itemCount: list.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
