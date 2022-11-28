import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/common/switcher.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class TsumoSelector extends ConsumerWidget {
  const TsumoSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakus = ref.watch(selectedYakusProvider);
    bool containedTsumo = selectedYakus.contains(YakuId.tsumo);

    bool val = ref.watch(tsumoSelectedProvider);
    if (containedTsumo) {
      val = true;
    }

    return Switcher(
      disabled: containedTsumo,
      val: val,
      onChanged: (val) => ref.read(tsumoSelectedProvider.notifier).state = val,
    );
  }
}
