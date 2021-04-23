import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/size_config.dart';

class ErrorWidget extends StatefulWidget {
  @override
  _ErrorWidgetState createState() => _ErrorWidgetState();
}

class _ErrorWidgetState extends State<ErrorWidget> {
  final options = [
    'A palavra não está correta',
    'A tradução para lingua de sinais não está correta',
    'A tradução para outra lingua não está correta',
    'Essa tradução pertence a outra palavra',
    'Outro:'
  ];
  int groupValue = -1;
  bool toggleText = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        width: SizeConfig.screenWidth,
        height: 280,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: options.length,
          itemBuilder: (_, int index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                        activeColor: Colors.indigo[400],
                        value: index,
                        groupValue: groupValue,
                        onChanged: (value) {
                          setState(() {
                            groupValue = index;
                            index == 4 ? toggleText = true : toggleText = false;
                          });
                        }),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        width: 230,
                        child: AutoSizeText(
                          options[index],
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                          maxLines: 2,
                          minFontSize: 16,
                          maxFontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                index == 4
                    ? toggleText
                        ? Container(
                            width: 230,
                            child: TextField(),
                          )
                        : SizedBox()
                    : SizedBox()
              ],
            );
          },
        ));
  }
}

void showReportErrorDialog(BuildContext context, String word) {
  showDialog(
      context: context,
      builder: (context) {
        SizeConfig().init(context);
        return AlertDialog(
          titlePadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.all(0),
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Erro na tradução',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancelar',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.red,
                            fontSize: 19,
                          ),
                        ),
                      ))
                ],
              ),
              Divider(
                thickness: 1,
                color: Color(0XFFC4C4C4),
              )
            ],
          ),
          content: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Palavra: ',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          word,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Erro: ',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                        ),
                      ),
                    ),
                    ErrorWidget(),
                  ],
                ),
              ),
            ),
          ),
          actions: [
            // ignore: deprecated_member_use
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.0),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Reportar',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ),
            )
          ],
        );
      });
}
