import 'package:flutter/material.dart';
import 'package:inter_libras/app/shared/widgets/item_card_widget.dart';

class ItemViewPage extends StatefulWidget {
  final String title;
  final List<ItemWidget> items;
  const ItemViewPage({Key key, this.title = "ItemView", @required this.items})
      : super(key: key);

  @override
  _ItemViewPageState createState() => _ItemViewPageState();
}

class _ItemViewPageState extends State<ItemViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.items?.length ?? 0,
      itemBuilder: (BuildContext ctxt, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, bottom: 5, right: 10, left: 10),
          child: ItemWidget(
              favorite: widget.items[index]?.favorite ?? false,
              name: widget.items[index]?.name ?? 'false',
              englishName: widget.items[index]?.englishName ?? 'false',
              image: widget.items[index]?.image ?? 'false',
              pressedFavorite: widget.items[index]?.pressedFavorite ?? () {},
              frontFlag: widget.items[index]?.frontFlag ?? 'false',
              backFlag: widget.items[index]?.backFlag ?? 'false'),
        );
      },
    );
  }
}
