import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 228, 209), // Beige muy claro (Old Lace)
      body: SafeArea(
        child: Column(
          children: [
            // Cabecera: Menú Naranja e Icono Perfil
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    child: IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person_outline, color: Colors.black),
                  ),
                ],
              ),
            ),
            
            // Barra de Búsqueda Visual
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Text("Buscar tendencias...", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            const Spacer(),

            // Imágenes de Ropa Centradas
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _productImage("https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/ropa3.jpg"),
                const SizedBox(width: 20),
                _productImage("https://raw.githubusercontent.com/mariarene0602/Imagenes-pantalla/refs/heads/main/ropa4.jpg"),
              ],
            ),

            const SizedBox(height: 30),

            // Texto de la Tienda
            const Text(
              "ZARA LUXE",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 4),
            ),
            const Text(
              "Tu estilo, tu esencia.",
              style: TextStyle(fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic),
            ),

            const Spacer(),

            // Osito en la parte inferior derecha
            const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text("🧸", style: TextStyle(fontSize: 60)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _productImage(String url) {
    return Container(
      width: 150,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5))],
      ),
    );
  }
}