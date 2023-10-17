// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class criarCadastrp extends StatefulWidget {
  const criarCadastrp({super.key});

  @override
  State<criarCadastrp> createState() => _criarCadastrpState();
}

class _criarCadastrpState extends State<criarCadastrp> {
  //valor da checkbox
    bool checado = false;

  //senha visivel
    bool senhaInvisivel = true;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            //voltar 
            Navigator.pushNamed(context, 'login');
          },
          icon: Icon(Icons.close),
          color: Color(0xFF666666)
        ),

        //
        // Texto e botoes do app bar
        //
        title: 

            //Texto central
            Text(
              'Inscrever-se',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold
                ),
                
            ),
            
        ),
      
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10), right: Radius.circular(10))),
                    label: Text(
                      'Nome',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    ),
              ),
              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10), right: Radius.circular(10))),
                    label: Text(
                      'E-mail',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16),
                    ),
                    )
              ),
              SizedBox(height: 20),

              TextField(
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

              SizedBox(height: 25),

              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.black,
                    activeColor: Color(0xFFF24C3D),
                    value: checado,

                    onChanged:(value) {
                      setState(() {
                        checado = value!;
                      });
                    },
                  ),

                  Text(
                    "Eu gostaria de Receber novidades sobre o Mula",
                    selectionColor: Colors.grey,
                  )
                ],
              )

              ],
            ),
            OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                'main_menu',
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
        
      ),
    );
  }
}
