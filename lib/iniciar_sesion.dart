import 'package:flutter/material.dart';
import 'package:partyapp/registro_google.dart';
import 'package:partyapp/registro_correo.dart';

class IniciarSesionScreen extends StatefulWidget {
  @override
  _IniciarSesionScreenState createState() => _IniciarSesionScreenState();
}

class _IniciarSesionScreenState extends State<IniciarSesionScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Iniciar Sesión',
                  style: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome\nBack',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.1,
                    ),
                  ),
                  Icon(
                    Icons.celebration_outlined,
                    color: Color(0xFF6A1B9A), // Púrpura como en tu diseño
                    size: 40,
                  ),
                ],
              ),
              SizedBox(height: 30),
              _buildTextField(
                label: 'Ingresar Correo electrónico',
                controller: _emailController,
              ),
              SizedBox(height: 16),
              _buildTextField(
                label: 'Ingresar Contraseña',
                controller: _passwordController,
                isPassword: true,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    text: 'Olvidé mi contraseña. ',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    children: [
                      TextSpan(
                        text: 'Click aquí',
                        style: TextStyle(
                          color: Color(0xFFE6AE00),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(
                    0xFFFFD740,
                  ), // Amarillo como en tu diseño
                  foregroundColor: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  'Ingresar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey[300])),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('O', style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider(color: Colors.grey[300])),
                ],
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistroGoogleScreen(),
                    ),
                  );
                },
                child: _buildSocialButton(
                  icon: Icons.g_mobiledata, // Placeholder para Google
                  text: 'Iniciar Sesion con Google',
                ),
              ),
              SizedBox(height: 10),
              _buildSocialButton(
                icon: Icons.facebook, // Placeholder para Facebook
                text: 'Iniciar Sesion con Facebook',
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_back, size: 16, color: Colors.black),
                    SizedBox(width: 5),
                    Text(
                      'Volver atrás.',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegistroCorreoScreen(),
                      ),
                    );
                  },
                  child: Text(
                    '¿No tienes cuenta? Regístrate aquí',
                    style: TextStyle(
                      color: Color(0xFFE6AE00),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFFE6AE00),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFE6AE00), width: 2),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton({required IconData icon, required String text}) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.black, size: 24),
            SizedBox(width: 10),
            Text(text, style: TextStyle(color: Colors.black, fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
