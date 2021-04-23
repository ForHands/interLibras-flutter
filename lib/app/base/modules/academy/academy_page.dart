import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../shared/widgets/app_bar_widget.dart';
import '../../../shared/widgets/soon_card.dart';
import 'academy_controller.dart';

class AcademyPage extends StatefulWidget {
  final String title;
  const AcademyPage({Key key, this.title = "Academy"}) : super(key: key);

  @override
  _AcademyPageState createState() => _AcademyPageState();
}

class _AcademyPageState extends ModularState<AcademyPage, AcademyController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        iconPressed: () {},
        screeName: widget.title,
        language: 'Brasil',
      ),
      body: ComingSoonCard(),
    );
  }
}
