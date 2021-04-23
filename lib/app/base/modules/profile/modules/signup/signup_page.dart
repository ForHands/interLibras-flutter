import 'package:flutter/material.dart';

import '../login/login_page.dart';
import '../shared/bottom_action.dart';
import '../shared/profile_appbar.dart';
import '../shared/standard_button.dart';
import '../shared/standard_text.dart';
import '../shared/standard_textField.dart';
import '../verifications/validation_code.dart';


const String screenText = 'Preencha suas informações para efetuar seu cadastro';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: 'Cadastro'),
      body: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
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
            padding: const EdgeInsets.only(top: 24.0),
            child: StandardTextField(
              icon: Icon(Icons.person),
              hintText: 'Nome',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: StandardTextField(
              icon: Icon(Icons.mail),
              hintText: 'E-mail',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: StandardTextField(
              icon: Icon(Icons.lock),
              hintText: 'Senha',
              obscure: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: StandardTextField(
              icon: Icon(Icons.lock),
              hintText: 'Confirmar Senha',
              obscure: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: StandardButton(
              buttonText: 'Finalizar Cadastro',
              pressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ValidateCodePage(
                    title: 'Confirme seu e-mail',
                    screenText:
                        'Para finalizar informe o código que enviamos para seu e-mail cadastrado e confirme seus dados.',
                    pressed: () {},
                  );
                }));
              },
            ),
          ),
          ProfileBottomAction(
            simpleText: 'Já é cadastrado?',
            buttonText: 'Faça o login',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            },
          )
        ],
      ),
    );
  }
}
