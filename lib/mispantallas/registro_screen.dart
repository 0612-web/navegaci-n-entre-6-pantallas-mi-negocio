import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Crear Cuenta", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Contenedor de información (Rosa)
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8BBD0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    _inputField("nombre"), _inputField("Apellidos"),
                    _inputField("correo"), _inputField("edad"),
                    _inputField("nombre usuario"), _inputField("contraseña"),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Botón Morado Cuadrado con el Osito
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/perfil'),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD1C4E9), // Morado claro
                    shape: BoxShape.rectangle,
                  ),
                  child: Stack(
                    children: [
                      const Center(
                        child: Text(
                          "REGISTRARSE",
                          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
                        ),
                      ),
                      const Positioned(
                        bottom: 5,
                        right: 5,
                        child: Text("🐻", style: TextStyle(fontSize: 40)), // Cabeza de oso
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _inputField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide.none),
        ),
      ),
    );
  }
}