import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              CupertinoIcons.smallcircle_fill_circle,
              size: 100,
            ),
          ),
          Container(
            child: "STATUS".text.gray800.bold.xl6.make(),
          ),
        ],
      ),
    );
  }
}
