import 'package:flutter/material.dart';
import '../../base/models/category_model.dart';
import '../utils/size_config.dart';

class ListImagesCard extends StatelessWidget {
  const ListImagesCard({Key key, @required this.category}) : super(key: key);

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: (SizeConfig.screenWidth) / 1.5,
      child: GridView.count(
        childAspectRatio: SizeConfig.screenHeight / (SizeConfig.screenWidth),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        primary: false,
        children: List.generate(
            category.urlsImages.length,
            (index) => Image.asset(
                  category.urlsImages[index],
                )),
      ),
    );
  }
}
