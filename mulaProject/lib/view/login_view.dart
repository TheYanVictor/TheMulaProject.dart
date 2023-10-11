// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10)
                  )
                ),
                labelText: 'Email'
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
              
                border: Border(
                  bottom: BorderSide()
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                )
                ),
              child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10),
                    right: Radius.circular(10)
                  )
                  
                ),
                labelText: 'Senha',
                fillColor: Colors.white
              ),
            ),
            )

            

          ],
      ),
      )
      
    );
  }
}