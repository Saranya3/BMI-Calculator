import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.buttonTitle });

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
            textAlign: TextAlign.center,
            //textAlign: Alignment.bottomCenter,
          ),
          color: kC1,
          width: double.infinity,
          height: kBottomHeight,
          margin: EdgeInsets.only(top: 10.0),
        ),
      ),
    );
  }
}