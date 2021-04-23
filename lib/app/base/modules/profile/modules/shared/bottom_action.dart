import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../shared/utils/theme.dart';

class ProfileBottomAction extends StatelessWidget {
  final String simpleText;
  final String buttonText;
  final Function onPressed;

  ProfileBottomAction({
    @required this.simpleText,
    @required this.buttonText,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          simpleText,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: ThemeApp.textColor,
              fontSize: 16,
            ),
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: ThemeApp.primaryColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
