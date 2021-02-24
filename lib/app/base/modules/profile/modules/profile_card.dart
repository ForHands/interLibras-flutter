import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:interLibras/app/shared/utils/theme.dart';
import 'package:interLibras/app/base/modules/profile/modules/shared/standard_button.dart';
import 'package:interLibras/app/base/modules/profile/modules/login/login_page.dart';
import 'package:interLibras/app/base/modules/profile/modules/signup/signup_page.dart';

const String _title = 'Bem-vindo';
const String _text =
    'InterSign é seu dicionario internacional de linguas de sinais.';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 18),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 45),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset('assets/images/hand.png'),
                _cardText(),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: StandardButton(
                    buttonText: 'Entrar',
                    pressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }),
                      );
                    },
                  ),
                ),
                _cardTextButton(
                  'Cadastre-se',
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SignUpPage();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardText() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            _title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: ThemeApp.textColor,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            _text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                color: ThemeApp.textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cardTextButton(String text, Function pressed) {
    return TextButton(
      onPressed: pressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: ThemeApp.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
