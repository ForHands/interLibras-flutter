import 'package:flutter/material.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class DeleteButtonWidget extends StatelessWidget {
  const DeleteButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 40.0,
        child: RaisedButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: EdgeInsets.all(0),
          onPressed: () {},
          color: Colors.white,
          child: Icon(
            Icons.delete,
            size: 40,
            color: ThemeApp.purple,
          ),
        ));
  }
}
