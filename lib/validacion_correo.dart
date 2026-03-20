import 'package:flutter/material.dart';
import 'package:partyapp/pantalla_reels.dart';

class ValidacionCorreoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo para Validación
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/chica_fondo.jpg',
                ), // Asegúrate de tener esta imagen en assets
                fit: BoxFit.cover,
                // Puedes añadir un degradado por encima si la imagen no lo tiene
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Validación del Correo',
                      style: TextStyle(color: Colors.grey[400], fontSize: 14),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD740),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.mail_lock_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Te hemos enviado un mensaje a tu correo con un enlace de verificación.\n\nRevisa tu bandeja de entrada y sigue las instrucciones para activar tu cuenta.\n\nSi no lo encuentras, revisa tu carpeta de spam o correo no deseado.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PantallaReelsScreen(),
                        ),
                        (route) => false, // Clears the stack to go to home
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFD740),
                      foregroundColor: Colors.black,
                      minimumSize: Size(double.infinity, 50),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Validar correo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 12,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Volver atrás',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
