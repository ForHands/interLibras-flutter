import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../shared/utils/theme.dart';
import '../shared/profile_appbar.dart';
import '../shared/standard_button.dart';
import '../shared/standard_text.dart';

const screenText =
    'Seu código de verificação expirou. Realize um novo cadastro para solicitar um novo código.';

class ExpiredCodePage extends StatelessWidget {
  final String title;

  ExpiredCodePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: title),
      body: ExpiredCode(),
    );
  }
}

class ExpiredCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                'Código expirado',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ThemeApp.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: StandardText(
                text: screenText,
                txtAlign: TextAlign.left,
                size: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 136),
              child: StandardButton(
                buttonText: 'Cadastre-se',
                pressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 96.0),
              child: Center(
                child: Text(
                  'Para dúvidas entre em contato com:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: ThemeApp.textColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.mail),
                  ),
                  Text(
                    'contato@forhands.net',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: ThemeApp.textColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
