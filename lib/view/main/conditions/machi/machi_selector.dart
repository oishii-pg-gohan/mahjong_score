import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';

class MachiSelector extends ConsumerWidget {
  const MachiSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<FuMachi>(
      isExpanded: false,
      value: null,
      hint: Row(
        children: [
          Text('待ち：${mapFuMachiName[ref.watch(machiProvider)]}'),
        ],
      ),
      elevation: 10,
      // style: const TextStyle(color: Colors.grey),
      icon: null,
      underline: Container(
        height: 2,
        color: kColorPrimary,
      ),
      onChanged: (FuMachi? selected) =>
          ref.read(machiProvider.notifier).state = selected!,
      items: _buildItems(context, ref),
    );
  }

  List<DropdownMenuItem<FuMachi>> _buildItems(
      BuildContext context, WidgetRef ref) {
    List<DropdownMenuItem<FuMachi>> items = [];

    for (FuMachi fuMachi in mapFuMachi.keys) {
      items.add(
        DropdownMenuItem(
          value: fuMachi,
          child: Text('${mapFuMachiName[fuMachi]}'),
        ),
      );
    }

    return items;
  }
}
