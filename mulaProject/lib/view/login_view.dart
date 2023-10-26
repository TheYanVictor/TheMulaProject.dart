// ignore_for_file: prefer_const_constructors, sort_child_properties_last
//flutter pub add google_fonts
// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  //estado da senha
  bool senhaInvisivel = true;
  var email = TextEditingController();
  var senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity, height: 0),
          Text(
            'Entrar',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          TextField(
           
            controller: email,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                ),
                label: Text(
                  'E-mail',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: senha,
            
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10), right: Radius.circular(10))),
                label: Text(
                  'Senha',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16),
                ),
                suffix: TextButton(
                    child: Text(
                      'Ver   ', //ignora a gambiarra
                      style: TextStyle(
                        color: Color(0xFFF24C3D),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     onPressed: () {
                          bool estado = senhaInvisivel;
                          //funcionalidade de "desobscurecer" o texto do textField
                          setState(() {
                            senhaInvisivel = !estado;
                          });
                          
                        },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                    ))),
            obscureText: senhaInvisivel,
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                openDialog();
              },
              child: Text('Esqueceu a senha?',
                  textScaleFactor: 1.3,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Roboto')),
              style: TextButton.styleFrom(foregroundColor: Color(0xFFF24C3D))),
          SizedBox(
            height: 40,
          ),
          OutlinedButton(
            onPressed: () {
              var txtEmail;
              var txtSenha;

              setState(() {
                txtEmail = email.text;
                txtSenha = senha.text;
              });

              if(txtEmail == ''){
                //avisar q deu errado
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('O e-mail deve ser válido')));
              }else if(txtSenha == ''){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('A senha deve ser válida')));

              }else{
                //ser feliz
                Navigator.pushNamed(
                context,
                'main_menu',
              );
              }
            },

            child: Text(
              'Entrar',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Inter'),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xFFF24C3D),
              foregroundColor: Color(0xFFF6F6F6),
              minimumSize: Size(double.infinity, 50),
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Não possui uma conta?',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF666666))),
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                'criar_cadastro',
              );
            },
            child: Text(
              'Inscrever-se',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Inter'),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xFFF24C3D),
              foregroundColor: Color(0xFFF6F6F6),
              minimumSize: Size(double.infinity, 50),
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        ],
      ),
    ));
  }


  //Caixa popUp que aparece caso o usuário tenha esquecido a senha
  Future openDialog() => showDialog(

    context: context,

    builder: (context) => AlertDialog(

      //define o formato da caixa com as bordas mais arredondadas
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      //titulo da caixa
      title: Text('Esqueceu a senha?', style: TextStyle(fontWeight: FontWeight.bold),),

      //conteudo da caixa - TextField
      content: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10),
                  ),
                ),
                label: Text(
                  'Digite seu E-mail de login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16),
                )),
          ),

      //botão de confirmação
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
              'Recuperar Senha',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Inter'),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Color(0xFFF24C3D),
              foregroundColor: Color(0xFFF6F6F6),
              minimumSize: Size(double.infinity, 50),
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
        )
      ],
    )
  );

  

}

