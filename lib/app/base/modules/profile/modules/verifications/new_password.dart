import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../shared/utils/theme.dart';
import '../shared/profile_appbar.dart';
import '../shared/standard_button.dart';
import '../shared/standard_textField.dart';

class NewPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: 'Nova Senha'),
      body: NewPassword(),
    );
  }
}

class NewPassword extends StatelessWidget {
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
                'Criar nova senha',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ThemeApp.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: StandardTextField(
                icon: Icon(Icons.lock),
                hintText: 'Nova Senha',
                obscure: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: StandardTextField(
                icon: Icon(Icons.lock),
                hintText: 'Confirmar Senha',
                obscure: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: StandardButton(
                buttonText: 'Alterar',
                pressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
