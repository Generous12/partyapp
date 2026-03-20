import 'package:flutter/material.dart';

class PantallaReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo para Reels (simula el video de la disco)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/chica_fondo.jpg',
                ), // Asegúrate de tener esta imagen en assets
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Capa de degradado oscuro inferior para legibilidad del texto
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black87],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.purpleAccent,
                                width: 4,
                              ),
                            ),
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.nightlight_round,
                                color: Colors.orange,
                                size: 30,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'One Night Club',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Tarde sin tiempo limitado para disfrutar de los\nmomentos mas elegantes, aqui en One Night Club\nChincha ...',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  height: 1.4,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.rocket_launch,
                                color: Colors.white,
                                size: 36,
                              ),
                              SizedBox(width: 24),
                              Icon(Icons.sms, color: Colors.white, size: 36),
                              SizedBox(width: 24),
                              Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 36,
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.rocket_launch,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(width: 6),
                              Text(
                                '112K',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(Icons.sms, color: Colors.white, size: 24),
                              SizedBox(width: 6),
                              Text(
                                '10K',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
