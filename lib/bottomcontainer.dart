import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainer extends StatelessWidget {
  final Function ontap;
  final String text;

  BottomContainer({@required this.ontap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kbottomtext,
          ),
        ),
        color: kBottomcontainercolour,
        padding: EdgeInsets.only(bottom: 10),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomcontainerheight,
      ),
    );
  }
}
