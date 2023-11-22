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

//Recuperar o texto do campo de texto
final TextEditingController tituloController = TextEditingController();
final TextEditingController descricaoController = TextEditingController();
final TextEditingController searchController = TextEditingController();

class _grupos_main_viewState extends State<grupos_main_view> {
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
                  controller: searchController,
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
                  onSubmitted: (value) {},
                ),
              ),
              //Pop up no canto direito superior da tela para adicionar um novo grupo
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
                                    LoginController().idUsuario(),
                                    tituloController.text,
                                    descricaoController.text),
                              );
                              Navigator.of(context).pop();
                              tituloController.clear();
                              descricaoController.clear();
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
              Container(
                height: 500,
                width: 350,
                child: StreamBuilder<QuerySnapshot>(
                  stream: Grupo_Controller().listar().snapshots(),
                  builder: (context, snapshot) {
                    //Tratar caso não conecte com o firebase
                    switch (snapshot.connectionState) {
                      //Caso não conecte
                      case ConnectionState.none:
                        return Center(
                          child: Text('Erro ao conectar com o banco de dados'),
                        );
                      //Caso esteja esperando
                      case ConnectionState.waiting:
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      //Caso esteja ativo
                      default:
                        final dados = snapshot.requireData as QuerySnapshot;
                        //Caso não tenha nenhum grupo cadastrado
                        if (dados.size == 0) {
                          return Center(
                            child: Text('Nenhum grupo cadastrado'),
                          );
                        } else {
                          return ListView.builder(
                            itemCount: dados.size,
                            itemBuilder: (context, index) {
                              String id = dados.docs[index].id;
                              dynamic item = dados.docs[index].data();
                              return Card(
                                child: ListTile(
                                  leading: Icon(Icons.description),
                                  title: Text(item['titulo']),
                                  subtitle: Text(item['descricao']),
                                  onTap: () {
                                    // Abria um popup com as opções de editar e excluir
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        late TextEditingController
                                            newdescricaoController =
                                            TextEditingController(
                                                text: item['descricao']);
                                        late TextEditingController
                                            newtituloController =
                                            TextEditingController(
                                                text: item['titulo']);
                                        return AlertDialog(
                                          //Edita o titulo
                                          title: TextField(
                                            controller: newtituloController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                  left:
                                                      const Radius.circular(20),
                                                  right:
                                                      const Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                          ),
                                          //Edita a descricao
                                          content: TextField(
                                            controller: newdescricaoController,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                  left:
                                                      const Radius.circular(20),
                                                  right:
                                                      const Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                          ),
                                          //Botao
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text('Cancelar'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            TextButton(
                                              child: const Text('Salvar'),
                                              onPressed: () {
                                                Grupo_Controller().atualizar(
                                                  context,
                                                  id,
                                                  Grupo(
                                                      LoginController()
                                                          .idUsuario(),
                                                      newtituloController.text,
                                                      newdescricaoController
                                                          .text),
                                                );
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  onLongPress: () {
                                    // Excuir o grupo
                                    Grupo_Controller().excluir(context, id);
                                  },
                                ),
                              );
                            },
                          );
                        }
                    }
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
