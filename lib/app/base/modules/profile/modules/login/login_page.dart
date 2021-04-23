import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../shared/utils/theme.dart';
import '../shared/bottom_action.dart';
import '../shared/profile_appbar.dart';
import '../shared/standard_button.dart';
import '../shared/standard_text.dart';
import '../shared/standard_textField.dart';
import '../signup/signup_page.dart';
import '../verifications/password_recovery.dart';


const screenText = 'Insira seus dados para entrar na conta';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: 'Login'),
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: StandardText(
              text: screenText,
              txtAlign: TextAlign.center,
              size: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: StandardTextField(
              icon: Icon(Icons.mail),
              hintText: 'E-mail',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: StandardTextField(
              icon: Icon(Icons.lock),
              hintText: 'Senha',
              obscure: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: StandardButton(
              buttonText: 'Entrar',
              pressed: () {},
            ),
          ),
          TextButton(
            child: Text(
              'Esqueci minha senha',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: ThemeApp.primaryColor,
                  fontSize: 16,
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PasswordRecoveryPage();
                }),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: ProfileBottomAction(
              simpleText: 'Não tem conta?',
              buttonText: 'Cadastre-se',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpPage();
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
