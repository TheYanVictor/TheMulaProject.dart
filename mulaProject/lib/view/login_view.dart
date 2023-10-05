import 'package:flutter/material.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity
            ),
            Icon(
              Icons.account_circle,
              size: 100,
            ),

            SizedBox(
              height: 30,
            ),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email'
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha'
              ),
            ),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                 textStyle: TextStyle(
                  fontSize: 28,
                  ),
              ),
              child: Text('Login'),
              //onPressed:
            ),
          ],
      ),
      )
      
    );
  }
}

//nao mudei nada

