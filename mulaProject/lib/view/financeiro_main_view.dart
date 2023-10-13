//Definindo a classe
import 'package:flutter/material.dart';

class financeiro_main_view extends StatefulWidget {
  const financeiro_main_view({super.key});

  @override
  State<financeiro_main_view> createState() => _financeiro_main_view();
}

//Construcao da pagina
class _financeiro_main_view extends State<financeiro_main_view> {
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
              'Saldo',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
