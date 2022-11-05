import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';

class YakusOpenButton extends ConsumerWidget {
  const YakusOpenButton({
    required this.text,
    required this.selected,
    required this.yakusList,
    super.key,
  });

  final String text;
  final bool selected;
  final Widget yakusList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: selected ? Colors.white : kColorPrimary,
        backgroundColor: selected ? kColorPrimary : Colors.white,
      ),
      onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return yakusList;
          }),
      child: Text(text),
    );
  }
}
