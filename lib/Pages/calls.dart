import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              CupertinoIcons.phone,
              size: 100,
            ),
          ),
          Container(
            child: "CALLS".text.gray800.bold.xl6.make(),
          ),
        ],
      ),
    );
  }
}
