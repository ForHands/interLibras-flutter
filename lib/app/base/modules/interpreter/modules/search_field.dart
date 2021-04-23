import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/utils/size_config.dart';
import '../../../../shared/utils/theme.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: SizeConfig.screenWidth - 80,
        height: 48,
        child: Center(
          child: TextField(
            controller: _searchController,
            textInputAction: TextInputAction.done,
            onChanged: (text) {
              debugPrint('Search for: $text');
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.search,
                  color: ThemeApp.primaryColor,
                  size: 32,
                ),
              ),
              hintText: 'Pesquisar',
              hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Color(0xFFAFAEAE),
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
