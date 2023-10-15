import 'package:flutter/material.dart';

class listas_main_view extends StatefulWidget {
  const listas_main_view({super.key});

  @override
  State<listas_main_view> createState() => _listas_main_viewState();
}

class _listas_main_viewState extends State<listas_main_view> {
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
              'Listas',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
