import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_button.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_six/yakus_selector_six.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class YakusOpenButtonSix extends ConsumerWidget {
  const YakusOpenButtonSix({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    bool selected = selectedYakuIds
        .where((element) => yakuIdsSix.contains(element))
        .isNotEmpty;

    return YakusOpenButton(
      text: '6翻',
      selected: selected,
      yakusList: const YakusSix(),
    );
  }
}
