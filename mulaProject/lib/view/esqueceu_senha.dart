import 'package:flutter/material.dart';

class esqueceuSenha extends StatefulWidget {
  const esqueceuSenha({super.key});

  @override
  State<esqueceuSenha> createState() => _esqueceuSenhaState();
}

class _esqueceuSenhaState extends State<esqueceuSenha> {
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
              'Esqueceu Senha',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
