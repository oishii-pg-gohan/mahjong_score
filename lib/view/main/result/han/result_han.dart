import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultHan extends ConsumerWidget {
  const ResultHan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    if (containsYakuman(selectedYakuIds)) {
      return const Center(
        child: Text(
          '-翻',
          style: TextStyle(fontSize: 26),
        ),
      );
    }

    bool menzen = ref.watch(menzenSelectedProvider);
    int han = getHanYakus(selectedYakuIds, menzen);
    int dora = ref.watch(doraCntProvider);

    return Center(
      child: Text(
        '${han + dora}翻',
        style: const TextStyle(fontSize: 26),
        key: const ValueKey('result-han'),
      ),
    );
  }
}
