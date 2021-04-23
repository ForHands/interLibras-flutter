import 'package:flutter/material.dart';
import '../utils/theme.dart';

class ExpandCard extends StatefulWidget {
  final Widget header;
  ExpandCard({Key key, @required this.header}) : super(key: key);

  _ExpandCardState createState() => _ExpandCardState(header);
}

class _ExpandCardState extends State<ExpandCard> {
  final Widget header;

  _ExpandCardState(this.header);

  @override
  Widget build(BuildContext context) {
    bool controlClik = false;
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 8,
        right: 8,
      ),
      child: ListTileTheme(
        tileColor: ThemeApp.primaryColor,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: ExpansionTile(
            onExpansionChanged: (value) {
              setState(() {
                controlClik = value;
              });
            },
            trailing: RotatedBox(
              quarterTurns: controlClik ? 3 : 1,
              child: Icon(
                Icons.double_arrow,
                color: Colors.white,
              ),
            ),
            title: Row(
              children: [widget.header],
            ),
            children: <Widget>[
              ListTile(
                title: Text('Item 1'),
                tileColor: Color(0xFFC7F6E9),
              ),
              ListTile(title: Text('Item 2'), tileColor: Color(0xFFC7F6E9)),
              ListTile(title: Text('Item 3'), tileColor: Color(0xFFC7F6E9)),
            ],
          ),
        ),
      ),
    );
  }
}
