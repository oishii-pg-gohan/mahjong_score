import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';

const int maxHonbaCnt = 8; // 上限はないため、八連荘を意識

class HonbaCntSelector extends ConsumerWidget {
  const HonbaCntSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: DropdownButton<int>(
        isExpanded: false,
        value: ref.watch(honbaCntProvider),
        elevation: 10,
        icon: null,
        underline: Container(
          height: 2,
          color: kColorPrimary,
        ),
        onChanged: (int? selected) =>
            ref.read(honbaCntProvider.notifier).state = selected!,
        items: _buildItems(context, ref),
      ),
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
