import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/size_config.dart';
import '../utils/theme.dart';

class NamePlayWiget extends StatelessWidget {
  const NamePlayWiget(
      {Key key,
      @required this.name,
      this.color,
      this.width,
      @required this.iconPressed,
      this.iconColor,
      @required this.fontSize,
      @required this.maxFontSize,
      @required this.minFontSize})
      : super(key: key);
  final String name;
  final Function iconPressed;
  final double minFontSize;
  final double maxFontSize;
  final double width;
  final double fontSize;
  final Color color;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: width,
              child: AutoSizeText(name,
                  minFontSize: minFontSize,
                  maxFontSize: maxFontSize,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: color ?? ThemeApp.textColor, fontSize: fontSize),
                  ))),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: iconPressed,
            child: Icon(
              Icons.play_circle_outline_outlined,
              color: iconColor ?? Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
