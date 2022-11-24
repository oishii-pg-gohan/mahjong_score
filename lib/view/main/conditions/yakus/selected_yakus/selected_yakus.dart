import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class SelectedYakus extends ConsumerWidget {
  const SelectedYakus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: selectedYakuIds
          .map((id) => mapYaku[id]!)
          .map((yaku) => Text(
                yaku.name,
                style: const TextStyle(fontSize: 20),
              ))
          .toList(),
    );
  }
}
