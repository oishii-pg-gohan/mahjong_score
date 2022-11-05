import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_button.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_three/yakus_selector_three.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class YakusOpenButtonThree extends ConsumerWidget {
  const YakusOpenButtonThree({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    bool selected = selectedYakuIds
        .where((element) => yakuIdsThree.contains(element))
        .isNotEmpty;

    return YakusOpenButton(
      text: '3翻',
      selected: selected,
      yakusList: const YakusThree(),
    );
  }
}
