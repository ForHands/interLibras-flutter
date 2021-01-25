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

class Quadrado extends StatelessWidget {
  final Widget header;

  Quadrado(this.header);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 8,
        right: 8,
      ),
      child: ListTileTheme(
        tileColor: ThemeApp.primaryColor,
        child: ExpansionTile(
          trailing: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.double_arrow,
              color: Colors.white,
            ),
          ),
          title: header,
          children: <Widget>[
            ListTileTheme(
              tileColor: Color(0xFFC7F6E9),
              child: ListTile(title: Text('Item 1')),
            ),
            ListTileTheme(
              tileColor: Color(0xFFC7F6E9),
              child: ListTile(title: Text('Item 2')),
            ),
            ListTileTheme(
              tileColor: Color(0xFFC7F6E9),
              child: ListTile(title: Text('Item 3')),
            ),
          ],
        ),
      ),
    );
  }
}

class Redondo extends StatelessWidget {
  final Widget header;

  Redondo(this.header);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 8,
        right: 8,
      ),
      child: Card(
        color: ThemeApp.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ExpansionTile(
          trailing: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.double_arrow,
              color: Colors.white,
            ),
          ),
          title: header,
          children: <Widget>[
            ListTileTheme(
              child: ListTile(title: Text('Item 1')),
            ),
            ListTileTheme(
              child: ListTile(title: Text('Item 2')),
            ),
            ListTileTheme(
              child: ListTile(title: Text('Item 3')),
            ),
          ],
        ),
      ),
    );
  }
}
