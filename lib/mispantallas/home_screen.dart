import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 196, 216),
      body: SafeArea(
        child: Column(
          children: [
            // Barra de estado simulada
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("12:12", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(children: [Icon(Icons.wifi, size: 18), SizedBox(width: 5), Icon(Icons.battery_full, size: 18)]),
                ],
              ),
            ),
            // Buscador
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 45,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: const Row(children: [Icon(Icons.search, color: Colors.grey), SizedBox(width: 10), Text("Google", style: TextStyle(color: Colors.grey))]),
            ),
            // Rejilla de Aplicaciones
            Expanded(
              child: GridView.count(
                crossAxisCount: 4, // 4 columnas para que quepan más
                mainAxisSpacing: 20,
                padding: const EdgeInsets.all(20),
                children: [
                  _appIcon(Icons.music_note, "Spotify", Colors.green),
                  _appIcon(Icons.messenger, "Chat", Colors.blue),
                  _appIcon(Icons.play_circle_fill, "YouTube", Colors.red),
                  _appIcon(Icons.mail, "Mail", Colors.orange),
                  _appIcon(Icons.facebook, "Facebook", Colors.indigo),
                  _appIcon(Icons.camera_alt, "Instagram", Colors.purple),
                  _appIcon(Icons.cloud, "Clima", Colors.lightBlue),
                  _appIcon(Icons.map, "Mapas", Colors.greenAccent),
                  // Botón para ir a Zara
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/zara'),
                    child: _appIcon(Icons.shopping_bag, "Zara", Colors.black87),
                  ),
                  _appIcon(Icons.notes, "Notas", Colors.yellow[700]!),
                  _appIcon(Icons.calendar_month, "Calendario", Colors.redAccent),
                  _appIcon(Icons.wb_sunny, "Sol", Colors.orangeAccent),
                ],
              ),
            ),
            // DOCK INFERIOR (Cámara, Galería, Configuración)
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _dockIcon(Icons.camera_enhance, Colors.blueGrey),
                  _dockIcon(Icons.photo_library, Colors.purpleAccent),
                  _dockIcon(Icons.settings, Colors.grey),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appIcon(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(backgroundColor: color, radius: 24, child: Icon(icon, color: Colors.white, size: 24)),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _dockIcon(IconData icon, Color color) {
    return CircleAvatar(
      backgroundColor: color,
      radius: 28,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}