import 'package:flutter/material.dart';

class perfil_main_view extends StatefulWidget {
  const perfil_main_view({super.key});

  @override
  State<perfil_main_view> createState() => _perfil_main_viewState();
}

class _perfil_main_viewState extends State<perfil_main_view> {
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
              'Perfil',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
