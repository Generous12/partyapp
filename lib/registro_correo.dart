import 'package:flutter/material.dart';
import 'package:partyapp/validacion_correo.dart';

class RegistroCorreoScreen extends StatefulWidget {
  @override
  _RegistroCorreoScreenState createState() => _RegistroCorreoScreenState();
}

class _RegistroCorreoScreenState extends State<RegistroCorreoScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String _genero = 'Masculina';

  bool _reqMayusculas = false;
  bool _reqSimbolo = false;
  bool _req8Caracteres = false;
  bool _reqNumero = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Registro Con Correo',
                    style: TextStyle(color: Colors.grey[400], fontSize: 14),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time to\nRegister',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.1,
                      ),
                    ),
                    Icon(Icons.person, color: Color(0xFF6A1B9A), size: 40),
                  ],
                ),
                SizedBox(height: 30),
                _buildTextField(
                  label: 'Ingresar Nombre Completo',
                  controller: _nameController,
                ),
                SizedBox(height: 16),
                _buildDateField('Ingresar fecha de nacimiento'),
                SizedBox(height: 16),
                _buildGenderSelector(),
                SizedBox(height: 16),
                _buildTextField(
                  label: 'Ingresar Correo electrónico',
                  controller: _emailController,
                ),
                SizedBox(height: 16),
                _buildTextField(
                  label: 'Ingresar una Contraseña',
                  controller: _passwordController,
                  isPassword: true,
                ),
                SizedBox(height: 16),
                _buildTextField(
                  label: 'Repetir la Contraseña',
                  controller: _confirmPasswordController,
                  isPassword: true,
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 20,
                  runSpacing: 8,
                  children: [
                    _buildRequirementItem(
                      "Debe tener mayúsculas",
                      _reqMayusculas,
                      () => setState(() => _reqMayusculas = !_reqMayusculas),
                    ),
                    _buildRequirementItem(
                      "Debe tener un símbolo",
                      _reqSimbolo,
                      () => setState(() => _reqSimbolo = !_reqSimbolo),
                    ),
                    _buildRequirementItem(
                      "Debe tener 8 caracteres",
                      _req8Caracteres,
                      () => setState(() => _req8Caracteres = !_req8Caracteres),
                    ),
                    _buildRequirementItem(
                      "Debe tener un número",
                      _reqNumero,
                      () => setState(() => _reqNumero = !_reqNumero),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ValidacionCorreoScreen(),
                      ),
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
                    'Registrarme',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.g_mobiledata,
                                color: Colors.black,
                                size: 28,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.black,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_back, size: 16, color: Colors.black),
                        SizedBox(width: 8),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    String? hintText,
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
            hintText: hintText,
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

  Widget _buildGenderSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Seleccionar tu genero',
          style: TextStyle(
            color: Color(0xFFE6AE00),
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Expanded(child: _buildGenderOption('Masculino', Icons.person)),
            SizedBox(width: 10),
            Expanded(child: _buildGenderOption('Femenino', Icons.person_3)),
          ],
        ),
      ],
    );
  }

  Widget _buildGenderOption(String gender, IconData icon) {
    bool isSelected = _genero == gender;
    return GestureDetector(
      onTap: () => setState(() => _genero = gender),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? Colors.black : Colors.grey[300]!,
            width: isSelected ? 1.5 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: Colors.black),
            SizedBox(width: 8),
            Text(
              gender,
              style: TextStyle(
                color: Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRequirementItem(
    String text,
    bool isChecked,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isChecked
                ? Icons.check_box_outlined
                : Icons.check_box_outline_blank,
            size: 16,
            color: isChecked ? Colors.green : Colors.grey[600],
          ),
          SizedBox(width: 4),
          Text(text, style: TextStyle(fontSize: 11, color: Colors.grey[600])),
        ],
      ),
    );
  }

  Widget _buildDateField(String label) {
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
        Row(
          children: [
            Expanded(child: _buildSmallTextField()),
            SizedBox(width: 10),
            Expanded(child: _buildSmallTextField()),
            SizedBox(width: 10),
            Expanded(child: _buildSmallTextField()),
          ],
        ),
      ],
    );
  }

  Widget _buildSmallTextField() {
    return TextField(
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
    );
  }
}
