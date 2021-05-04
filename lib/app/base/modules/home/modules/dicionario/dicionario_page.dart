import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inter_libras/app/shared/widgets/app_bar_widget.dart';
import '../../../../../shared/widgets/expand_widget.dart';
import '../../../../../shared/widgets/name_play_widget.dart';
import 'dicionario_controller.dart';

class DicionarioPage extends StatefulWidget {
  final String title;
  const DicionarioPage({Key key, this.title = "Dicionario"}) : super(key: key);

  @override
  _DicionarioPageState createState() => _DicionarioPageState();
}

class _DicionarioPageState
    extends ModularState<DicionarioPage, DicionarioController> {
  @override
  void initState() {
    super.initState();
    controller.initList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        screeName: 'Dicionario', 
        language: 'Brasil', 
        iconPressed: (){},
        enableBack:true,
        backPressed:(){
          Navigator.of(context).pop();
        }),
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) {
            return Column(
              children: List.generate(
                  controller.listDic.length,
                  (index) => ExpandCard(
                      header: NamePlayWiget(
                          iconColor: Colors.white,
                          width: 100,
                          color: Colors.white,
                          name: controller.listDic[index],
                          iconPressed: null,
                          fontSize: 24,
                          maxFontSize: 26,
                          minFontSize: 22))),
            );
          },
        ),
      ),
    );
  }
}
