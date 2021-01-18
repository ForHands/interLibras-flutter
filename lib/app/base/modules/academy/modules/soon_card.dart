import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/utils/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        child: Card(
          elevation: 12.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ComingSoonHeader(),
              ComingSoonText(),
            ],
          ),
        ),
      ),
    );
  }
}

class ComingSoonHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      height: 196,
      child: Icon(
        Icons.school,
        color: Colors.white,
        size: 146,
      ),
      decoration: BoxDecoration(
        color: ThemeApp.primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
    );
  }
}

class ComingSoonText extends StatelessWidget {
  final String _cardTextBold = 'Em Breve!';
  final String _cardText =
      'Uma nova experiência no ensino de línguas de sinais.';

  TextStyle cardTextStyle(FontWeight textWeight) {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontWeight: textWeight,
        fontSize: 16.0,
        color: ThemeApp.textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(21.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$_cardTextBold',
            style: cardTextStyle(FontWeight.bold),
          ),
          Text(
            '$_cardText',
            style: cardTextStyle(null),
          ),
        ],
      ),
    );
  }
}
