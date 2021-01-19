import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String screeName;
  final Function iconPressed;
  final String language;
  final bool disableLang;
  final GlobalKey<ScaffoldState> scaffoldKey;

  AppBarWidget(
      {Key key,
      @required this.screeName,
      this.disableLang = false,
      this.scaffoldKey,
      @required this.language,
      @required this.iconPressed})
      : preferredSize = Size.fromHeight(86),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: widget.preferredSize.height,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: ThemeApp.primaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                  widget.screeName,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.iconPressed,
                  child: Icon(
                    Icons.play_circle_outline_outlined,
                    color: Colors.white,
                    size: 26,
                  ),
                )
              ],
            ),
          ),
          !widget.disableLang
              ? Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 15),
                  child: Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF09D89A),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 140,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.repeat,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                  Text(
                                    widget.language,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 40,
                              child: Image.asset('assets/images/linguagem.png'),
                            ),
                          ])),
                )
              : Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        widget.scaffoldKey.currentState.openEndDrawer(),
                  ),
                )
        ],
      ),
    );
  }
}

class AppBarWidgetNoLang extends StatefulWidget implements PreferredSizeWidget {
  final String screeName;
  final Function iconPressed;
  AppBarWidgetNoLang({
    Key key,
    @required this.screeName,
    @required this.iconPressed,
  })  : preferredSize = Size.fromHeight(80),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  _AppBarWidgetNoLangState createState() => _AppBarWidgetNoLangState();
}

class _AppBarWidgetNoLangState extends State<AppBarWidgetNoLang> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: widget.preferredSize.height,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: ThemeApp.primaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16)),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Modular.link.pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          widget.screeName,
                          style: GoogleFonts.poppins(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 24.0),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: widget.iconPressed,
                          child: Icon(
                            Icons.play_circle_outline_outlined,
                            color: Colors.white,
                            size: 26,
                          ),
                        )
                      ],
                    ),
                  )),
            ]));
  }
}
