import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';

const int maxDoraCnt = 13; // 13翻以上で数え役満なので、それ以上ドラが乗ることは想定しない

class DoraCntSelector extends ConsumerWidget {
  const DoraCntSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<int>(
      isExpanded: false,
      value: ref.watch(doraCntProvider),
      elevation: 10,
      icon: null,
      underline: Container(
        height: 2,
        color: kColorPrimary,
      ),
      onChanged: (int? selected) =>
          ref.read(doraCntProvider.notifier).state = selected!,
      items: _buildItems(context, ref),
    );
  }

  List<DropdownMenuItem<int>> _buildItems(BuildContext context, WidgetRef ref) {
    List<DropdownMenuItem<int>> items = [];

    for (int i = 0; i <= maxDoraCnt; i++) {
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
