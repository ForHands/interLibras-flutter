import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../shared/utils/theme.dart';
import 'edit_profile.dart';

class Profile extends StatelessWidget {
  final String userName;
  final String userEmail;

  Profile({@required this.userName, @required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: _userInfo('Nome', userName),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: _userInfo('E-mail', userEmail),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: _editInfo(
                'Editar meus dados',
                Icons.edit,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return EditProfile(
                        userName: userName,
                        userEmail: userEmail,
                      );
                    }),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: _editInfo('Sair da minha conta', Icons.exit_to_app, () {}),
            ),
          ],
        ),
      ),
    );
  }

  Widget _userInfo(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Text(
          content,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: ThemeApp.textColor,
          ),
        ),
      ],
    );
  }

  Widget _editInfo(String text, IconData icon, Function onTap) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: ThemeApp.textColor,
        ),
      ),
      trailing: Icon(
        icon,
        color: ThemeApp.primaryColor,
      ),
      onTap: onTap,
    );
  }
}
