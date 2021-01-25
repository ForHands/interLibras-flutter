import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'arquivos_exemplo.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Okay, não é a solução mais elegante, mas foi mais pra visualizar.
            // Depois tenho que bolar uma lógica pra preencher isso.
            ExpandCard(header: FakePlayName('Letra A')),
            ExpandCard(header: FakePlayName('Letra B')),
            ExpandCard(header: FakePlayName('Letra C')),
            ExpandCard(header: FakePlayName('Letra D')),
            ExpandCard(header: FakePlayName('Letra E')),
            ExpandCard(header: FakePlayName('Letra F')),
            ExpandCard(header: FakePlayName('Letra G')),
            ExpandCard(header: FakePlayName('Letra H')),
            ExpandCard(header: FakePlayName('Letra I')),
            ExpandCard(header: FakePlayName('Letra J')),
            ExpandCard(header: FakePlayName('Letra K')),
            ExpandCard(header: FakePlayName('Letra L')),
            ExpandCard(header: FakePlayName('Letra M')),
            ExpandCard(header: FakePlayName('Letra N')),
            ExpandCard(header: FakePlayName('Letra O')),
            ExpandCard(header: FakePlayName('Letra P')),
            ExpandCard(header: FakePlayName('Letra Q')),
            ExpandCard(header: FakePlayName('Letra R')),
            ExpandCard(header: FakePlayName('Letra S')),
            ExpandCard(header: FakePlayName('Letra T')),
            ExpandCard(header: FakePlayName('Letra U')),
            ExpandCard(header: FakePlayName('Letra V')),
            ExpandCard(header: FakePlayName('Letra Y')),
            ExpandCard(header: FakePlayName('Letra Z')),
          ],
        ),
      ),
    );
  }
}

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
    // Quando o codigo tiver show apagar o 'arquivos_exemplo' e adicionar
    // codigo aqui.

    return Redondo(header);
    //return Quadrado(header);
  }
}
