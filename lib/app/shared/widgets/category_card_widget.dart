import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/models/category_model.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/widgets/list_images_card.dart';
import 'add_button_widget.dart';
import 'delete_button_widget.dart';
import 'name_play_widget.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard(
      {Key key, @required this.category, @required this.selectCategorie})
      : super(key: key);
  final CategoryModel category;
  final Function selectCategorie;
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: SizeConfig.screenWidth - 50,
        height: SizeConfig.screenHeight / 4,
        child: Stack(
          children: [
            widget.category.newCategory
                ? Container()
                : Positioned(right: 8, top: 8, child: DeleteButtonWidget()),
            GestureDetector(
              onTap:
                  widget.category.newCategory ? () {} : widget.selectCategorie,
              child: Align(
                alignment: widget.category.urlsImages.isNotEmpty &&
                        !widget.category.newCategory
                    ? Alignment.topLeft
                    : Alignment.center,
                child: widget.category.newCategory
                    ? AddButtonWidget()
                    : widget.category.urlsImages.isEmpty
                        ? Image.asset('assets/images/block.png')
                        : Padding(
                            padding: EdgeInsets.only(
                                top: SizeConfig.blockSizeVertical * 2),
                            child: ListImagesCard(category: widget.category),
                          ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: NamePlayWiget(
                  name: widget.category.name,
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
