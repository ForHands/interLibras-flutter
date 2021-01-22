import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'item_individual_card_widget.dart';

class ItemWidget extends StatefulWidget {
  ItemWidget({
    @required this.favorite,
    @required this.name,
    @required this.englishName,
    @required this.image,
    @required this.pressedFavorite,
    @required this.frontFlag,
    @required this.backFlag,
  });
  final bool favorite;
  final String name;
  final String englishName;
  final String frontFlag;
  final String backFlag;
  final String image;
  final Function pressedFavorite;

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  String finalName;
  String frontFlag;
  String backFlag;
  String auxFrontFlag;
  String auxBackFlag;
  @override
  void initState() {
    super.initState();
    finalName = widget.name;
    frontFlag = widget.frontFlag;
    backFlag = widget.backFlag;
    auxFrontFlag = frontFlag;
    auxBackFlag = backFlag;
  }

  void pressedLang() {
    setState(() {
      frontFlag = auxBackFlag;
      backFlag = auxFrontFlag;
      auxFrontFlag = frontFlag;
      auxBackFlag = backFlag;
      finalName == widget.name
          ? finalName = widget.englishName
          : finalName = widget.name;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.screenWidth - 30,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              left: 50,
              child: ItemIndividualWidget(
                flag: backFlag,
                name: finalName,
                favorite: widget.favorite,
                image: widget.image,
                pressedFavorite: widget.pressedFavorite,
                pressedLang: pressedLang,
              )),
          Positioned(
              left: 0,
              child: ItemIndividualWidget(
                flag: frontFlag,
                name: finalName,
                favorite: widget.favorite,
                image: widget.image,
                pressedFavorite: widget.pressedFavorite,
                pressedLang: () {},
              )),
        ],
      ),
    );
  }
}
