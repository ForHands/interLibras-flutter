import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerTile extends StatelessWidget {
  final String _title;
  final IconData _icon;
  final Function _action;

  DrawerTile(this._title, this._icon, this._action);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            '${this._title}',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Icon(
              this._icon,
              color: Colors.white,
              size: 28.0,
            ),
          ),
        ],
      ),
      onTap: this._action,
    );
  }
}

class DrawerExit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListTile(
        leading: Icon(
          Icons.double_arrow,
          color: Colors.white,
        ),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
