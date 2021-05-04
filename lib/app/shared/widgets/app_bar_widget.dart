import 'dart:ui';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app_controller.dart';
import '../../base/models/language_model.dart';
import '../utils/size_config.dart';
import '../utils/theme.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String screeName;
  final Function iconPressed;
  final Function() backPressed;
  final String language;
  final bool disableLang;
  final bool enableBack;
  final GlobalKey<ScaffoldState> scaffoldKey;

  AppBarWidget(
      {Key key,
      @required this.screeName,
      this.disableLang = false,
      this.enableBack = false,
      this.scaffoldKey,
      @required this.language,
      this.backPressed,
      @required this.iconPressed})
      : preferredSize = Size.fromHeight(100),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<AppBarWidget> {
  final controller = Modular.get<AppController>();
  List<Widget> returnEnumAsWidget(BuildContext context) {
    List<Widget> widgetsEnum = [];
    EnumLanguage.values.forEach((enumIndex) {
      widgetsEnum.add(SimpleDialogOption(
        onPressed: () {
          controller.changeCurrentLanguage(enumLanguageToObject(enumIndex));
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Flag(
              enumLanguageToObject(enumIndex).flag,
              height: 30,
              width: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(enumLanguageToObject(enumIndex).language,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Colors.black, fontSize: 24.0),
                ))
          ],
        ),
      ));
    });

    return widgetsEnum;
  }

  Future<void> _askedToLead() async {
    switch (await showDialog<EnumLanguage>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
              title:
                  const Text('Qual linguagem você gostaria como a principal?'),
              children: returnEnumAsWidget(context));
        })) {
      case EnumLanguage.libras:
        print(EnumLanguage.libras);
        break;
      case EnumLanguage.asl:
        print(EnumLanguage.asl);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final appController = Modular.get<AppController>();
    SizeConfig().init(context);
    return Container(
      height: !widget.enableBack ? widget.preferredSize.height : widget.preferredSize.height+100,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: ThemeApp.primaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
      ),
      child: Stack(
        children: [
          if(widget.enableBack)
          Positioned(
            left:5,
            bottom: 45,
            child: Padding(
            padding: EdgeInsets.only(left: 5,bottom: 12),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              iconSize: 32,
              onPressed: widget.backPressed),
          )),
          Positioned(
            left: widget.enableBack ? 40 : 10,
            bottom: widget.enableBack ? 15 : 15,
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
              ? Positioned(
                right: 5,
                bottom: widget.enableBack ? 60 : 10,
                child: GestureDetector(
                  onTap: _askedToLead,
                  child: ConstrainedBox(
                          constraints: BoxConstraints(minWidth: 140),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF09D89A),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Observer(
                                builder: (_) {
                                  return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.repeat,
                                                color: Colors.white,
                                                size: 28,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                controller
                                                    .currentLanguage.language,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          child: Image.asset(
                                              controller.currentLanguage.flag ==
                                                      'br'
                                                  ? appController.frontFlag
                                                  : appController.backFlag),
                                        )
                                      ]);
                                },
                              ))),
                )
              )
              : Align(
                alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom:10),
                    child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () =>
                        widget.scaffoldKey.currentState.openEndDrawer(),
                  ),),
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
