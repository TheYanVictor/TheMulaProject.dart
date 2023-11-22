import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_01/model/grupo.dart';

import '../view/util.dart';
import 'login_controller.dart';

// ignore: camel_case_types
class Grupo_Controller {
  //
  // ADICIONAR uma nova Tarefa
  //
  void adicionar(context, Grupo t) {
    FirebaseFirestore.instance
        .collection('grupos')
        .add(t.toJson())
        .then((value) => sucesso(context, 'Tarefa adicionada com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível adicionar a tarefa.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // ATUALIZAR
  //
  void atualizar(context, id, Grupo t) {
    FirebaseFirestore.instance
        .collection('grupos')
        .doc(id)
        .update(t.toJson())
        .then((value) => sucesso(context, 'Tarefa atualizada com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar a tarefa.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  //
  void excluir(context, id) {
    FirebaseFirestore.instance
        .collection('grupos')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Tarefa excluída com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir a tarefa.'));
  }

  //
  // LISTAR todas as Tarefas da coleção
  //
  listar() {
    return FirebaseFirestore.instance
        .collection('grupos')
        .where('uid', isEqualTo: LoginController().idUsuario());
  }

  pesquisarPorTitulo(titulo) {
    var resultado = FirebaseFirestore.instance
        .collection('grupos')
        .where('uid', isEqualTo: LoginController().idUsuario())
        .where('titulo', isGreaterThanOrEqualTo: titulo);

    if (resultado == null) {
      return FirebaseFirestore.instance
          .collection('grupos')
          .where('uid', isEqualTo: LoginController().idUsuario());
    } else {
      return resultado;
    }
  }
}
