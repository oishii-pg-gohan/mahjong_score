import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';

const int maxHonbaCnt = 8; // 上限はないため、八連荘を意識

class HonbaCntSelector extends ConsumerWidget {
  const HonbaCntSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<int>(
      isExpanded: false,
      value: null,
      hint: Row(
        children: [
          Text('本場 ${ref.watch(honbaCntProvider)}'),
        ],
      ),
      elevation: 10,
      // style: const TextStyle(color: Colors.grey),
      icon: null,
      underline: Container(
        height: 2,
        color: kColorPrimary,
      ),
      onChanged: (int? selected) =>
          ref.read(honbaCntProvider.notifier).state = selected!,
      items: _buildItems(context, ref),
    );
  }

  List<DropdownMenuItem<int>> _buildItems(BuildContext context, WidgetRef ref) {
    List<DropdownMenuItem<int>> items = [];

    for (int i = 0; i <= maxHonbaCnt; i++) {
      items.add(
        DropdownMenuItem(
          value: i,
          child: Text('$i'),
        ),
      );
    }

    return items;
  }
}
