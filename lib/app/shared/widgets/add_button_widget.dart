import 'package:flutter/material.dart';
import '../utils/theme.dart';

// ignore_for_file: deprecated_member_use
class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 40.0,
        height: 60.0,
        child: RaisedButton(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: ThemeApp.primaryColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 36,
          ),
        ));
  }
}
