import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';

void showWarningDialog(BuildContext context) {
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
                child: Image.asset('assets/icons/aviso.png'),
                padding: EdgeInsets.only(top: 20),
              )),
            ],
          ),
        ),
        content: Container(
          width: SizeConfig.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              AutoSizeText(
                "Tem certeza que deseja fazer isso?",
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
              Padding(
                child: AutoSizeText(
                  "Essas paradas ai de cuidado, sabe como é. Confirme somente se tiver certeza.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  maxLines: 3,
                  minFontSize: 18,
                  maxFontSize: 20,
                ),
                padding: EdgeInsets.only(left: 5, right: 5),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  child: Container(
                color: Color(0XFFF7F7F9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: SizeConfig.screenWidth / 2 - 41,
                      child: FlatButton(
                        padding: EdgeInsets.all(0),
                        color: Color(0XFFF7F7F9),
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check),
                              Text('Confirmar',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black, fontSize: 18.0),
                                  )),
                            ]),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 1,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.black54,
                        indent: 0,
                        endIndent: 0,
                      ),
                    ),
                    Container(
                        height: 60,
                        width: SizeConfig.screenWidth / 2 - 41,
                        child: FlatButton(
                          padding: EdgeInsets.all(0),
                          color: Color(0XFFF7F7F9),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Cancelar',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.black, fontSize: 18.0),
                                  )),
                              Icon(Icons.close)
                            ],
                          ),
                        ))
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    },
  );
}
