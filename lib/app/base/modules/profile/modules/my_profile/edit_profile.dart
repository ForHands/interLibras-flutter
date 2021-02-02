import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interLibras/app/base/modules/profile/modules/shared/profile_appbar.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class EditProfile extends StatelessWidget {
  final String userName;
  final String userEmail;
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userEmailController = TextEditingController();

  EditProfile({@required this.userName, @required this.userEmail});

  @override
  Widget build(BuildContext context) {
    _userNameController.text = userName;
    _userEmailController.text = userEmail;

    return Scaffold(
      appBar: ProfileAppBar(title: 'Meu Perfil'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: _editField('Nome', _userNameController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: _editField('E-mail', _userEmailController),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: _editInfo('Alterar minha senha', Icons.edit, () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 97.0),
                child: Column(
                  children: [
                    _alterationButton(
                      'Descartar alterações',
                      Colors.red[400],
                      () {
                        Navigator.pop(context);
                      },
                    ),
                    _alterationButton(
                      'Aplicar alterações',
                      ThemeApp.primaryColor,
                      () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _editField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.edit,
          color: ThemeApp.primaryColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: title,
        labelStyle: GoogleFonts.poppins(
          fontSize: 18,
          //color: Colors.grey,
        ),
      ),
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

  Widget _alterationButton(String title, Color color, Function pressed) {
    return ElevatedButton(
      onPressed: pressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(5),
        minimumSize: MaterialStateProperty.all<Size>(
          Size(
            SizeConfig.screenWidth - 32,
            40,
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }
}
