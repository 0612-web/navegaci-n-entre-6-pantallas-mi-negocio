import 'package:flutter/material.dart';

class ZaraScreen extends StatelessWidget {
  const ZaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 238, 215, 185), elevation: 0, iconTheme: const IconThemeData(color: Colors.black)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("🧸", style: TextStyle(fontSize: 100)), // Representación del CustomPaint
            const Text("WELCOME", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text("to ZARA", style: TextStyle(fontSize: 35, letterSpacing: 5)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[300], padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
              child: const Text("Iniciar sesión", style: TextStyle(color: Color.fromARGB(255, 228, 203, 171))),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/registro'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF000080), padding: const EdgeInsets.symmetric(horizontal: 62, vertical: 15)),
              child: const Text("Registrarse", style: TextStyle(color: Color.fromARGB(255, 233, 198, 166))),
            ),
          ],
        ),
      ),
    );
  }
}