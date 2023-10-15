import 'package:flutter/material.dart';

class criarCadastrp extends StatefulWidget {
  const criarCadastrp({super.key});

  @override
  State<criarCadastrp> createState() => _criarCadastrpState();
}

class _criarCadastrpState extends State<criarCadastrp> {
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
              'Criar cadastro',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
