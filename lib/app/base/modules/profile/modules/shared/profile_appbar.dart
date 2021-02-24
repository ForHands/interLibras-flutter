import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function onPressed = () {};

  ProfileAppBar({Key key, @required this.title})
      : preferredSize = Size.fromHeight(64),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      title: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          IconButton(
            icon: Icon(Icons.play_circle_outline),
            onPressed: onPressed,
          ),
        ],
      ),
      backgroundColor: ThemeApp.primaryColor,
    );
  }

  @override
  final Size preferredSize;
}
