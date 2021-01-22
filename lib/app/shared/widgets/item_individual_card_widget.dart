import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

import 'name_play_widget.dart';

class ItemIndividualWidget extends StatefulWidget {
  ItemIndividualWidget(
      {Key key,
      @required this.favorite,
      @required this.name,
      @required this.flag,
      @required this.image,
      @required this.pressedFavorite,
      @required this.pressedLang})
      : super(key: key);
  final String name;
  final String image;
  final String flag;
  final bool favorite;
  final Function pressedFavorite;
  final Function pressedLang;
  @override
  _ItemIndividualWidgetState createState() => _ItemIndividualWidgetState();
}

class _ItemIndividualWidgetState extends State<ItemIndividualWidget> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: SizeConfig.screenWidth - 90,
        height: SizeConfig.screenHeight / 4,
        child: Stack(
          children: [
            Positioned(
              right: 4,
              top: 8,
              child: GestureDetector(
                  child: Image.asset(widget.flag), onTap: widget.pressedLang),
            ),
            Positioned(
              left: 4,
              top: 4,
              child: IconButton(
                  icon: Icon(
                    widget.favorite ? Icons.favorite : Icons.favorite_outline,
                    color: ThemeApp.purple,
                    size: 32,
                  ),
                  onPressed: widget.pressedFavorite),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(widget.image),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: NamePlayWiget(
                  name: widget.name,
                  iconPressed: () {},
                  minFontSize: 20,
                  maxFontSize: 26,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
