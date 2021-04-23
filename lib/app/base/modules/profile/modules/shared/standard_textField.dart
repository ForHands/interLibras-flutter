import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandardTextField extends StatefulWidget {
  final Icon icon;
  final String hintText;
  final bool obscure;
  final String errorMsg;

  StandardTextField({
    @required this.icon,
    @required this.hintText,
    this.obscure = false,
    this.errorMsg = 'Um erro ocorreu',
  });

  _StandardTextFieldState createState() {
    return _StandardTextFieldState(
      icon: icon,
      hintText: hintText,
      obscureInit: obscure,
      obscureRelative: obscure,
      errorMsg: errorMsg,
    );
  }
}

class _StandardTextFieldState extends State<StandardTextField> {
  final TextEditingController _fieldControler = TextEditingController();
  final Icon icon;
  final String hintText;
  final bool obscureInit;
  final String errorMsg;
  bool obscureRelative;
  bool _appearError = false;

  _StandardTextFieldState({
    @required this.icon,
    @required this.hintText,
    @required this.obscureInit,
    @required this.errorMsg,
    @required this.obscureRelative,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 48,
            child: Center(
              child: TextField(
                controller: _fieldControler,
                obscureText: obscureRelative,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: icon,
                  ),
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Color(0xFFAFAEAE),
                      fontSize: 16,
                    ),
                  ),
                  suffixIcon:
                      obscureInit ? _revealPassword(obscureRelative) : null,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: _appearError ? _error() : null,
        ),
      ],
    );
  }

  Widget _revealPassword(bool hiden) {
    return IconButton(
      tooltip: hiden ? 'Revelar senha' : 'Esconder senha',
      icon: hiden ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      onPressed: () {
        setState(() {
          obscureRelative = !obscureRelative;
        });
      },
    );
  }

  Widget _error() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        errorMsg,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.red, fontSize: 12),
        ),
      ),
    );
  }
}
