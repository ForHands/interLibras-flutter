// Arquivos para preencher o dicionario com exemplos

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class FakePlayName extends StatelessWidget {
  final String titulo;

  FakePlayName(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          this.titulo,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
          )),
        ),
        IconButton(
          icon: Icon(Icons.play_circle_outline),
          color: Colors.white,
          tooltip: 'Traduzir',
          onPressed: () {},
        ),
      ],
    );
  }
}
