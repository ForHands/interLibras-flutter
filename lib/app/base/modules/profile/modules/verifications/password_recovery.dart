import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:interLibras/app/base/modules/profile/modules/shared/profile_appbar.dart';
import 'package:interLibras/app/base/modules/profile/modules/shared/standard_button.dart';
import 'package:interLibras/app/base/modules/profile/modules/shared/standard_text.dart';
import 'package:interLibras/app/base/modules/profile/modules/shared/standard_textField.dart';
import 'package:interLibras/app/base/modules/profile/modules/verifications/validation_code.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

const screenText =
    'Informe seu e-mail cadastrado para receber instruções de como recuperar seu acesso.';

class PasswordRecoveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: 'Nova Senha'),
      body: PasswordRecovery(),
    );
  }
}

class PasswordRecovery extends StatelessWidget {
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
                'Recuperação de Senha',
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
              padding: const EdgeInsets.only(top: 56),
              child: StandardTextField(
                icon: Icon(Icons.mail),
                hintText: 'E-mail',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: StandardButton(
                buttonText: 'Receber Codigo',
                pressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ValidateCodePage(
                        title: 'E-mail enviado',
                        screenText:
                            'Digite o codigo recebido para redefinir sua senha. Caso não tenha recebido, solicite um novo codigo.',
                        pressed: () {},
                      );
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
