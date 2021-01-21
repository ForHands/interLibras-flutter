import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/models/category_model.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'add_butto_widget.dart';
import 'name_play_widget.dart';

class CategoryCard extends StatefulWidget {
  CategoryCard({Key key, @required this.category}) : super(key: key);
  final CategoryModel category;
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      child: Container(
        width: SizeConfig.screenWidth - 50,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.category.newCategory
                ? AddButtonWidget()
                : widget.category.urlsImages.isEmpty
                    ? Row(
                        children: [Image.asset('assets/images/block.png')],
                      )
                    : Row(
                        children: [],
                      ),
            const SizedBox(
              height: 10,
            ),
            NamePlayWiget(
              name: widget.category.name,
              iconPressed: () {},
              minFontSize: 20,
              maxFontSize: 26,
              fontSize: 24,
            )
          ],
        ),
      ),
    );
  }
}
