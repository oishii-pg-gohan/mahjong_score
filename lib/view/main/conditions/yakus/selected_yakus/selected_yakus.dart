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
      key: const ValueKey('selected-yakus'),
      children: _buildYakus(selectedYakuIds),
    );
  }

  List<Widget> _buildYakus(List<YakuId> yakuIds) {
    List<Widget> yakus = [];
    yakuIds.asMap().forEach((idx, yakuId) {
      Yaku yaku = mapYaku[yakuId]!;
      yakus.add(
        Text(
          yaku.name,
          style: const TextStyle(fontSize: 20),
          key: ValueKey('selected-yaku-$idx'),
        ),
      );
    });
    return yakus;
  }
}
