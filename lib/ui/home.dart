import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    String logopath = isDarkMode
        ? 'assets/images/welcome_logo_dark.svg'
        : 'assets/images/welcome_logo.svg';
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
          Text(
            "Bienvenid@ de vuelta",
            style: GoogleFonts.roboto(
              fontSize: 24,
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/login"),
                child: Text(
                  "Iniciar Sesión",
                  style: GoogleFonts.roboto(color: Colors.white),
                )),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/register"),
                child: Text(
                  "Registrarse",
                  style: GoogleFonts.roboto(color: Colors.white),
                )),
          ),
        ],
      ),
    ));
  }
}
