import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class StandardText extends StatelessWidget {
  final String text;
  final double size;
  final TextAlign txtAlign;

  StandardText(
      {@required this.text, @required this.txtAlign, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            text,
            textAlign: txtAlign,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: size,
                color: ThemeApp.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
