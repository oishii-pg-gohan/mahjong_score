import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/data/fu/fus.dart';

class MentsuSelector extends ConsumerWidget {
  const MentsuSelector({
    required this.no,
    required this.fuMentsu,
    required this.onChanged,
    super.key,
  });

  final int no;
  final FuMentsu? fuMentsu;
  final Function onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<FuMentsu>(
      isExpanded: false,
      value: fuMentsu != FuMentsu.none ? fuMentsu : null,
      hint: Text('面子$no'),
      elevation: 10,
      icon: null,
      underline: Container(
        height: 2,
        color: kColorPrimary,
      ),
      onChanged: (FuMentsu? selected) => onChanged(selected),
      items: _buildItems(context),
    );
  }

  List<DropdownMenuItem<FuMentsu>> _buildItems(BuildContext context) {
    List<DropdownMenuItem<FuMentsu>> items = [];

    for (FuMentsu mentsu in mapFuMentsu.keys) {
      if (mentsu == FuMentsu.none) {
        continue;
      }
      items.add(
        DropdownMenuItem(
          value: mentsu,
          child: Text('${mapFuMentsuName[mentsu]}'),
        ),
      );
    }

    return items;
  }
}
