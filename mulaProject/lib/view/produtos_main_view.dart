import 'package:flutter/material.dart';

class produtos_main_view extends StatefulWidget {
  const produtos_main_view({super.key});

  @override
  State<produtos_main_view> createState() => _produtos_main_viewState();
}

class _produtos_main_viewState extends State<produtos_main_view> {
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
              'Produtos',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}