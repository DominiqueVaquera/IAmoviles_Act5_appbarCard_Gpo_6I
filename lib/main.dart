import 'package:flutter/material.dart';

void main() => runApp(const AppZoologico());

class AppZoologico extends StatelessWidget {
  const AppZoologico({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoologico',
      home: const Cuidador(),
    );
  }
} //fin clase AppZoologico

class Cuidador extends StatelessWidget {
  const Cuidador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zoologico'),
        backgroundColor: Colors.lightGreen,
        actions: [
          Icon(Icons.bedroom_child),
          Icon(Icons.flight),
        ],
        
      ),
      drawer: Drawer(),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Tarjeta 1
      Container(
        width: 320,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          // Mezcla de Guinda profundo a Guinda casi negro
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF800020), 
              Color(0xFF2D000B), 
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(102),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar con borde sutil para que resalte
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white24, width: 2),
              ),
              child: const CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/DominiqueVaquera/IAmoviles_Act5_appbarCard_Gpo_6I/refs/heads/main/vaquera.png',
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Título Principal
            const Text(
              'Dominique Vaquera',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 4),
            // Subtítulo
            Text(
              'Cuidador de animales',
              style: TextStyle(
                color: Colors.white.withAlpha(230),
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      
      // Aquí podrías añadir más tarjetas simplemente copiando el Container anterior
    ],
  ),
),
    );
  }
}//fin clase cuidador