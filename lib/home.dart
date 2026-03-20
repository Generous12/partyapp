import 'package:flutter/material.dart';
import 'package:partyapp/boletos.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFDF5),
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bienvenido\nStriker12',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            height: 1.1,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.grey[300],
                              child: Icon(Icons.person, color: Colors.grey[600], size: 20),
                            ),
                            SizedBox(width: 12),
                            Icon(Icons.notifications, color: Colors.black),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Estados de las ultimas 24 horas',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildEstadoItem(color: Colors.red, isDark: true),
                          SizedBox(width: 12),
                          _buildEstadoItem(color: Colors.purple, isDark: true),
                          SizedBox(width: 12),
                          _buildEstadoItem(color: Colors.blue, isDark: true),
                          SizedBox(width: 12),
                          _buildEstadoItem(color: Colors.orange, isDark: false),
                          SizedBox(width: 12),
                          _buildEstadoItem(color: Colors.indigo, isDark: true),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Publicaciones',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900], // Adjust color to match design
                      ),
                    ),
                    SizedBox(height: 16),
                    // Post Card
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.black,
                                      child: Icon(Icons.nightlight_round, color: Colors.orange, size: 12),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'One Night Club',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFF0C2),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    'San Borja',
                                    style: TextStyle(
                                      color: Color(0xFFE6AE00),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Disfruta de una noche celestial en nuestro establecimiento en el distrito de Chincha baja, ven y disfruta con tus amigos...',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[600],
                                height: 1.4,
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                height: 200,
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: AssetImage('assets/chica_fondo.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -16,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFD740),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    'Comprar Ahora',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 32),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildDot(isActive: false),
                              SizedBox(width: 4),
                              _buildDot(isActive: false),
                              SizedBox(width: 4),
                              _buildDot(isActive: true),
                              SizedBox(width: 4),
                              _buildDot(isActive: false),
                              SizedBox(width: 4),
                              _buildDot(isActive: false),
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home, color: Color(0xFF6A1B9A), size: 28),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BoletosScreen()));
              },
              child: Icon(Icons.featured_play_list, color: Colors.black, size: 28),
            ),
            Icon(Icons.movie_creation_outlined, color: Colors.black, size: 28), // Clapperboard for reels
            Icon(Icons.person_outline, color: Colors.black, size: 28),
          ],
        ),
      ),
    );
  }

  Widget _buildEstadoItem({required Color color, required bool isDark}) {
    return Container(
      width: 65,
      height: 65,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 2),
      ),
      child: CircleAvatar(
        backgroundColor: isDark ? Colors.black : Color(0xFFFFF0C2),
        child: Icon(
          isDark ? Icons.nightlight_round : Icons.celebration,
          color: isDark ? color : Colors.orange,
          size: 20,
        ),
      ),
    );
  }

  Widget _buildDot({required bool isActive}) {
    return Container(
      width: isActive ? 8 : 6,
      height: isActive ? 8 : 6,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF6A1B9A) : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
