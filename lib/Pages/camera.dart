import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.camera_alt,
              size: 100,
            ),
          ),
          Container(
            child: "Camera".text.gray800.bold.xl6.make(),
          ),
        ],
      ),
    );
  }
}
