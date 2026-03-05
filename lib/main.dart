import 'package:flutter/material.dart';
import 'mispantallas/lock_screen.dart';
import 'mispantallas/home_screen.dart';
import 'mispantallas/zara_screen.dart';
import 'mispantallas/login_screen.dart';
import 'mispantallas/registro_screen.dart';
import 'mispantallas/perfil_screen.dart';

void main() => runApp(const ProyectoOsitoApp());

class ProyectoOsitoApp extends StatelessWidget {
  const ProyectoOsitoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto 6 Pantallas Estéticas',
      initialRoute: '/lock',
      routes: {
        '/lock': (context) => const LockScreen(),
        '/home': (context) => const HomeScreen(),
        '/zara': (context) => const ZaraScreen(),
        '/login': (context) => const LoginScreen(),
        '/registro': (context) => const RegistroScreen(),
        '/perfil': (context) => const PerfilScreen(),
      },
    );
  }
}