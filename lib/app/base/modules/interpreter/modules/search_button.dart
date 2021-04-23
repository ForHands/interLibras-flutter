import 'package:flutter/material.dart';

import '../../../../shared/utils/theme.dart';
import 'search_field.dart';
import 'search_voice.dart';

class Search extends StatefulWidget {
  final bool folded;

  Search({this.folded = true});

  @override
  _SearchState createState() => _SearchState(folded: folded);
}

class _SearchState extends State<Search> {
  bool folded;

  _SearchState({@required this.folded});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      alignment: Alignment(1.0, 1.0),
      child: folded ? _foldSearch() : _expandedSearch(),
    );
  }

  Widget _foldSearch() {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
      child: FloatingActionButton(
        backgroundColor: ThemeApp.primaryColor,
        child: Icon(Icons.search, color: Colors.white),
        tooltip: 'Pesquisar',
        onPressed: () => setState(() => folded = !folded),
      ),
    );
  }

  Widget _expandedSearch() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SearchField(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: SearchVoice(),
          ),
        ],
      ),
    );
  }
}
