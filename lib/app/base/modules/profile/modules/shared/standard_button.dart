import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class StandardButton extends StatelessWidget {
  final String buttonText;
  final Function pressed;

  StandardButton({@required this.buttonText, @required this.pressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: pressed,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(296, 56)),
          backgroundColor:
              MaterialStateProperty.all<Color>(ThemeApp.primaryColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
