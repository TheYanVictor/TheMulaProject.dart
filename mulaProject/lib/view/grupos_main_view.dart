import 'package:flutter/material.dart';

class grupos_main_view extends StatefulWidget {
  const grupos_main_view({super.key});

  @override
  State<grupos_main_view> createState() => _grupos_main_viewState();
}

class _grupos_main_viewState extends State<grupos_main_view> {
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
              'Grupos',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
