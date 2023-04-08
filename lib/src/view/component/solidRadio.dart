import 'package:flutter/material.dart';

class SolidRadio extends StatelessWidget {
  final Color color;
  final double size;
  final bool value;
  final int radioVal;
  final Function(bool?) onChanged;

  SolidRadio({
    required this.color,
    required this.size,
    required this.value,
    required this.onChanged,
    required this.radioVal,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? color : Colors.transparent,
          border: Border.all(
            color: color,
            width: 2,
          ),
        ),
        child: value
            ? Icon(
                Icons.check,
                size: size * 0.7,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
