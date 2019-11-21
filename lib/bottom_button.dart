import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    @required this.onPress,
    @required this.label,
  }) : super(key: key);

  final Function onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.00),
        padding: Device.get().isIphoneX ? EdgeInsets.only(bottom: 20.0) : null,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
