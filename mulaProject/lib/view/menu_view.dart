import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Creating the main menu view

class menu_view extends StatefulWidget {
  const menu_view({super.key});

  @override
  State<menu_view> createState() => _menu_view();
}

class _menu_view extends State<menu_view> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
      ),
    );
  }
}
