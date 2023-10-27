import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_01/view/configuracoes_view.dart';
import 'package:trabalho_01/view/criar_cadastro.dart';
import 'package:trabalho_01/view/esqueceu_senha.dart';
import 'package:trabalho_01/view/financeiro_main_view.dart';
import 'package:trabalho_01/view/grupos_main_view.dart';
import 'package:trabalho_01/view/listas_main_view.dart';
import 'package:trabalho_01/view/login_view.dart';
import 'package:trabalho_01/view/menu_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trabalho_01/view/perfil_main_view.dart';
import 'package:trabalho_01/view/produtos_main_view.dart';

class MyCustomBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: true,
          scrollBehavior: MyCustomBehavior(),

          //Navigation routes
          initialRoute: 'login',
          routes: {
            //Login Page
            'login': (context) => login_view(),

            //Main menu page
            'main_menu': (context) => menu_view(),

            //Following pages
            'financeiro': (context) => financeiro_main_view(),
            'listas': (context) => listas_main_view(),
            'perfil': (context) => perfil_main_view(),
            'grupos': (context) => grupos_main_view(),
            'esqueceu_senha': (context) => esqueceuSenha(),
            'criar_cadastro': (context) => criarCadastrp(),
            'produtos': (context) => produtos_main_view(),
            'configuracoes': (context) => configuracoes_view(),
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
