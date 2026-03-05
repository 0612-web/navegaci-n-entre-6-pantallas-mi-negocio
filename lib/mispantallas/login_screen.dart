import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(color: const Color(0xFFE9967A), borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _field("usuario"), const SizedBox(height: 10),
                  _field("correo"), const SizedBox(height: 10),
                  _field("contraseña"),
                  TextButton(onPressed: () {}, child: const Text("¿Olvidaste tu contraseña?", style: TextStyle(color: Colors.black, fontSize: 11))),
                  ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/perfil'), child: const Text("Ingresar")),
                ],
              ),
            ),
          ),
          Positioned(left: 10, top: 350, child: const Text("🧸", style: TextStyle(fontSize: 50))),
        ],
      ),
    );
  }

  Widget _field(String hint) => TextField(decoration: InputDecoration(hintText: hint, filled: true, fillColor: const Color.fromARGB(255, 255, 224, 182), border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none)));
}