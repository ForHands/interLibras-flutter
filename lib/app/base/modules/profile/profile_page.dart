import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../../../shared/widgets/drawer_widget.dart';
import 'modules/my_profile/info_profile.dart';
import 'modules/profile_card.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller
  bool _isLogged = false;
  String _testUserName = 'Wallace Neto';
  String _testUserEmail = 'wallaceneto@forhands.net';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MenuDrawer(),
      key: controller.scaffoldKey,
      appBar: AppBarWidget(
          iconPressed: () {},
          screeName: widget.title,
          language: 'Brasil',
          scaffoldKey: controller.scaffoldKey,
          disableLang: true),
      body: _isLogged
          ? Profile(
              userName: _testUserName,
              userEmail: _testUserEmail,
            )
          : ProfileCard(),
    );
  }
}
