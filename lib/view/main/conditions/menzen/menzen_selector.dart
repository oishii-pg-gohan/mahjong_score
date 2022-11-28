import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/common/switcher.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class MenzenSelector extends ConsumerWidget {
  const MenzenSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakus = ref.watch(selectedYakusProvider);
    bool containedMenzen = containsMenzen(selectedYakus);
    bool containedYakuman = containsYakuman(selectedYakus);

    bool val = ref.watch(menzenSelectedProvider);
    if (containedMenzen) {
      val = true;
    } else if (containedYakuman) {
      val = false;
    }

    return Switcher(
      disabled: containedMenzen || containedYakuman,
      val: val,
      onChanged: (val) => ref.read(menzenSelectedProvider.notifier).state = val,
    );
  }
}
