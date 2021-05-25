import 'package:flutter/material.dart';
import 'package:health_checker_nv/constants/app_constants.dart';

class LeftSide extends StatelessWidget {
  final double sizeWidth;

  const LeftSide({Key key, @required this.sizeWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: sizeWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: accentColor,
          ),
        ),
      ],
    );
  }
}
