import 'package:flutter/material.dart';

class BoletosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section with light background
              Container(
                width: double.infinity,
                color: Color(0xFFFFFDF5),
                padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0, bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Últimos eventos de esta semana',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900], // Match the dark blue color from image
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Confirma tu asistencia y disfruta de los eventos semanales',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          'Mañana',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.access_time, size: 16, color: Colors.grey[600]),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Featured Event Card
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/chica_fondo.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black26, Colors.transparent, Colors.black87],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                'One Night Club',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            right: 12,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.favorite, color: Colors.black, size: 18),
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            left: 12,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.people, size: 14, color: Colors.black),
                                  SizedBox(width: 4),
                                  Text(
                                    '126',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            right: 12,
                            child: Text(
                              '+100 Asistencias',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    // Pagination Dots
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildDot(isActive: false),
                        SizedBox(width: 4),
                        _buildDot(isActive: true),
                        SizedBox(width: 4),
                        _buildDot(isActive: false),
                        SizedBox(width: 4),
                        _buildDot(isActive: false),
                        SizedBox(width: 4),
                        _buildDot(isActive: false),
                      ],
                    ),
                  ],
                ),
              ),

              // Bottom Section
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Search Bar
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Buscar por club o evento disponible',
                        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
                        prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Hoy',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.black87),
                            SizedBox(width: 8),
                          ],
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Color(0xFF6A1B9A)),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    
                    // Grid of Events
                    GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.65, // Adjust this ratio depending on the text content heights
                      children: [
                        _buildEventGridCard(
                          isGreenPill: true,
                          pillText: '23',
                          title: 'One Night Club',
                          location: 'Alto Laran',
                          dateText: 'Inicio del evento 20/06',
                        ),
                        _buildEventGridCard(
                          isGreenPill: false, // Wait, both have green pill 10, 23
                          isYellowPill: true, // Second has yellow
                          pillText: '10',
                          title: 'El Sotano',
                          location: 'San Borja',
                          dateText: 'Mañana !',
                        ),
                        _buildEventGridCard(
                          isGreenPill: true,
                          pillText: '125',
                          title: 'One Night Club',
                          location: 'Alto Laran',
                          dateText: 'Inicio del evento 20/06',
                        ),
                        _buildEventGridCard(
                          isGreenPill: true,
                          pillText: '8.0S',
                          title: 'One Night Club',
                          location: 'Chincha',
                          dateText: 'Mañana !',
                        ),
                      ],
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
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Go back to Home
              },
              child: Icon(Icons.home, color: Colors.black, size: 28),
            ),
            Icon(Icons.featured_play_list, color: Color(0xFF6A1B9A), size: 28), // Active Ticket/List
            Icon(Icons.movie_creation_outlined, color: Colors.black, size: 28), // Clapperboard for reels
            Icon(Icons.person_outline, color: Colors.black, size: 28),
          ],
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

  Widget _buildEventGridCard({
    required bool isGreenPill,
    bool isYellowPill = false,
    required String pillText,
    required String title,
    required String location,
    required String dateText,
  }) {
    Color pillColor = isYellowPill == true ? Colors.yellowAccent : Colors.greenAccent;
    // Overriding as both seem to be green in image except maybe some. Actually visually they all look green. I will use green mostly.
    pillColor = Colors.greenAccent;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Box
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage('assets/chica_fondo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black26, Colors.transparent, Colors.black87],
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: pillColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.people, size: 10, color: Colors.black),
                        SizedBox(width: 4),
                        Text(
                          pillText,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite, color: Colors.black, size: 14),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        location,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // Desc Box
          Row(
            children: [
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.black,
                child: Icon(Icons.nightlight_round, color: Colors.orange, size: 8),
              ),
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            dateText,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFFFFD740),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check, size: 12, color: Colors.black),
                  SizedBox(width: 4),
                  Text(
                    'Iniciarme', // actually the button says "Inscribirme"
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
