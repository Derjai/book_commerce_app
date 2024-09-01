import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    bool passwordVisible = false;
    String logopath = isDarkMode
        ? 'assets/images/Create_dark.svg'
        : 'assets/images/Create.svg';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              logopath,
              semanticsLabel: 'Welcome Logo',
              width: 200,
              height: 200,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Ingresar usuario",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Usuario',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Ingresar contraseña",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              return TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !passwordVisible,
              );
            }),
            ElevatedButton(
              onPressed: () => {},
              child: Text("Crear Cuenta", style: GoogleFonts.roboto()),
            ),
          ],
        ),
      ),
    );
  }
}
