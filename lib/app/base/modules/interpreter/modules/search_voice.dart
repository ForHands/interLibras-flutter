import 'package:flutter/material.dart';

import '../../../../shared/utils/theme.dart';

class SearchVoice extends StatefulWidget {
  @override
  _SearchVoiceState createState() => _SearchVoiceState();
}

class _SearchVoiceState extends State<SearchVoice> {
  //stt.SpeechToText _speech;
  //bool _isListening = true;
  //String _text = 'Diga algo para pesquisar';

  @override
  void initState() {
    super.initState();
    //_speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: ThemeApp.primaryColor,
      tooltip: 'Pesquisa por voz',
      child: Icon(
        Icons.mic,
        size: 32,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }

  // _openBottomSearch(BuildContext context) {
  //   showModalBottomSheet(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(12),
  //           topRight: Radius.circular(12),
  //         ),
  //       ),
  //       context: context,
  //       builder: (context) {
  //         return SingleChildScrollView(
  //           child: Column(
  //             mainAxisSize: MainAxisSize.max,
  //             children: <Widget>[
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 24.0),
  //                 child: Text(
  //                   'Gravando...',
  //                   style: GoogleFonts.poppins(
  //                     fontSize: 32,
  //                     color: ThemeApp.textColor,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 24.0),
  //                 child: Text(
  //                   _text,
  //                   style: GoogleFonts.poppins(
  //                     color: ThemeApp.textColor,
  //                     fontSize: 16,
  //                   ),
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 30.0),
  //                 child: AvatarGlow(
  //                   animate: true,
  //                   glowColor: ThemeApp.primaryColor,
  //                   endRadius: 80,
  //                   duration: Duration(milliseconds: 2000),
  //                   repeat: true,
  //                   repeatPauseDuration: Duration(milliseconds: 200),
  //                   child: Container(
  //                     width: 56,
  //                     height: 56,
  //                     child: RawMaterialButton(
  //                       fillColor: ThemeApp.primaryColor,
  //                       shape: CircleBorder(),
  //                       child: Icon(
  //                         Icons.mic,
  //                         size: 40,
  //                         color: Colors.white,
  //                       ),
  //                       onPressed: () {
  //                         _listen(context);
  //                       },
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }

  // _listen(BuildContext context) async {
  //   if (!_isListening) {
  //     bool available = await _speech.initialize(
  //       onStatus: (val) => print('onStatus: $val'),
  //       onError: (val) => print('onError: $val'),
  //     );
  //     if (available) {
  //       setState(() => _isListening = true);
  //       _speech.listen(
  //         onResult: (val) => setState(() {
  //           _text = val.recognizedWords;
  //         }),
  //       );
  //     }
  //   } else {
  //     setState(() => _isListening = false);
  //     _speech.stop();
  //     if (_text == null || _text == '') {
  //       _text = 'Desculpe, não consegui entender';
  //     }
  //   }
  //   debugPrint(_text);
  // }
}
