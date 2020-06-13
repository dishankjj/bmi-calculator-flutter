import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableSlider extends StatelessWidget {
  ReusableSlider({@required this.label, @required this.onChange});

  final int label;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        activeTrackColor: Colors.white,
        inactiveTrackColor: Colors.white30,
        thumbColor: kThumbColor,
        overlayColor: kThumbOverlayColor,
        thumbShape: RoundSliderThumbShape(
          enabledThumbRadius: 15.0,
        ),
        overlayShape: RoundSliderOverlayShape(
          overlayRadius: 30.0,
        ),
      ),
      child: Slider(
        value: label.toDouble(),
        min: kSliderMinValue,
        max: kSliderMaxValue,
        onChanged: onChange,
      ),
    );
  }
}
