import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_01/view/login_view.dart';
import 'package:trabalho_01/view/menu_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: true,

          //rotas de navegação
          initialRoute: 'login',
          routes: {
            //Login Page
            'login': (context) => login_view(),

            //Main menu page
            'main_menu': (context) => menu_view(),

            //Following pages
            //'financeiro' : (context) => financeiro_main_view(),
            //'listas' : (context) => listas_main_view(),
            //'perfil' : (context) => perfil_main_view(),
            //'grupos' : (context) => grupos_main_view(),
            //'produtos' : (context) => produtos_main_view(),
          }),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
