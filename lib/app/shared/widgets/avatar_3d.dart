import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

class Avatar3d extends StatelessWidget {
  final double width;
  final double height;

  Avatar3d({@required this.width, @required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      color: Colors.blue,
      child: GestureDetector(
        child: ModelViewer(
          src: 'https://modelviewer.dev/shared-assets/models/Horse.glb',
          cameraControls: true,
          autoPlay: true,
        ),
        onVerticalDragUpdate: null,
      ),
    );
  }
}
