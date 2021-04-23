import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/theme.dart';

class ConfigComponentWidget extends StatelessWidget {
  const ConfigComponentWidget(
      {Key key, @required this.title, @required this.icon, this.onTap})
      : super(key: key);

  final String title;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: ThemeApp.primaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(this.title,
                      style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
