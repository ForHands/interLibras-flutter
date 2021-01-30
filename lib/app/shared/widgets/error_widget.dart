import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';

void showErrorDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      SizeConfig().init(context);
      return AlertDialog(
        titlePadding: EdgeInsets.all(0),
        contentPadding: EdgeInsets.all(0),
        title: Container(
          child: Stack(
            children: [
              Positioned(
                  right: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      size: 34,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )),
              Center(
                  child: Padding(
                child: Image.asset('assets/icons/erro.png'),
                padding: EdgeInsets.only(top: 20),
              )),
            ],
          ),
        ),
        content: Container(
          height: 220,
          width: SizeConfig.screenWidth,
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      "Algo inesperado ocorreu",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      ),
                      maxLines: 2,
                      minFontSize: 19,
                      maxFontSize: 22,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AutoSizeText(
                      "Essas paradas ai de erro, sabe como é. Se não se resolver sozinho, entre em contato.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      maxLines: 3,
                      minFontSize: 18,
                      maxFontSize: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'intersign@forhands.net',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
