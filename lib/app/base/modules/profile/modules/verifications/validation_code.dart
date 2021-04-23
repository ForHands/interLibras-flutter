import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../shared/utils/theme.dart';
import '../shared/bottom_action.dart';
import '../shared/profile_appbar.dart';
import '../shared/standard_button.dart';
import '../shared/standard_text.dart';
import '../shared/standard_textField.dart';
import 'expired_code.dart';

class ValidateCodePage extends StatelessWidget {
  final String title;
  final String screenText;
  final Function pressed;

  ValidateCodePage({
    @required this.title,
    @required this.screenText,
    @required this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(title: 'Nova Senha'),
      body:
          ValidateCode(title: title, screenText: screenText, pressed: pressed),
    );
  }
}

class ValidateCode extends StatelessWidget {
  final String title;
  final String screenText;
  final Function pressed;

  ValidateCode({
    @required this.title,
    @required this.screenText,
    @required this.pressed,
  });

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
                title,
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
              padding: const EdgeInsets.only(top: 56),
              child: StandardTextField(
                icon: null,
                hintText: 'Informe o código',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: StandardButton(
                buttonText: 'Confirmar',
                pressed: pressed,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Text(
                  'Lembre-se de verificar a lixeira de spam',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            ProfileBottomAction(
              simpleText: 'Não recebeu?',
              buttonText: 'Solicitar novo código',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ExpiredCodePage(title: 'Nova Senha');
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
