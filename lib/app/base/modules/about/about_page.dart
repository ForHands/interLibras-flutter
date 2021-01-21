import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/utils/theme.dart';
import 'about_controller.dart';

class AboutPage extends StatefulWidget {
  final String title;
  const AboutPage({Key key, this.title = "About"}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends ModularState<AboutPage, AboutController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeApp.primaryColor,
        leading: IconButton(
          onPressed: () {
            Modular.link.pop();
          },
          icon: Icon(
            Icons.arrow_back,
            size: 40,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Container(
                    child: Center(
                      child: Image.asset('assets/images/hand.png'),
                    ),
                    width: (SizeConfig.screenWidth / 2) - 40,
                    height: (SizeConfig.screenHeight / 4) - 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(26)),
                    )),
              ),
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight / 3,
              decoration: BoxDecoration(
                color: ThemeApp.primaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(26),
                    bottomLeft: Radius.circular(26)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          'InterSIgn é um aplicativo criado pela For Hands - Desenvolvimento de Programas LTDA CNPJ: 36.486.449/0001-59',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 17,
                              height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.language,
                            size: 26,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Site: www.forhands.net',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 17,
                                  height: 1.5))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.email,
                            size: 26,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('E-mail: intersign@forhands.net',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 17,
                                  height: 1.5))
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Copyright For Hands 2020',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 15,
                                  height: 1.5),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.copyright,
                              size: 23,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Todos os direitos reservados',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 17,
                                    height: 1.5))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
