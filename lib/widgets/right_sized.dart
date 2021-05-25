import 'package:flutter/material.dart';
import 'package:health_checker_nv/constants/app_constants.dart';

class RightSide extends StatelessWidget {
  final double sizeWidth;

  const RightSide({Key key, @required this.sizeWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: sizeWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: accentColor,
          ),
        ),
      ],
    );
  }
}
