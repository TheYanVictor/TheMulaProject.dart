import 'package:flutter/material.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //row 1 -
            Row(
              //add code
              children: [
                SizedBox(width: double.infinity),
                Icon(Icons.account_balance_sharp,
                    size: 100, color: Color.fromRGBO(198, 37, 198, 0.612)),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Saldo'),
                ),
              ],
            ),
            //row 2
            //Row(
            //add code
            //),
            //row 3
            //Row(
            //add code
            // ),
          ],
        ),
      ),
    );
  }
}
