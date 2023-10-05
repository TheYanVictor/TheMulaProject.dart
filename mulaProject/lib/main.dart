import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_01/view/login_view.dart';
import 'package:trabalho_01/view/menu_view.dart';


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
          'login' : (context) => login_view(),
          'main_menu' : (context) => menu_view(),
        }
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        
      ),
    );
  }
}
