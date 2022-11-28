import 'package:flutter/material.dart';
import 'package:mahjong_score/const.dart';

class Switcher extends StatelessWidget {
  const Switcher({
    required this.disabled,
    required this.val,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  final bool disabled;
  final bool val;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: val,
      activeColor: disabled ? Colors.green[100] : kColorPrimary,
      trackColor: val
          ? null
          : disabled
              ? MaterialStateProperty.all(Colors.grey[200])
              : null,
      thumbColor: val
          ? null
          : disabled
              ? MaterialStateProperty.all(Colors.grey[300])
              : null,
      onChanged: disabled ? (val) => {} : (val) => onChanged(val),
    );
  }
}
