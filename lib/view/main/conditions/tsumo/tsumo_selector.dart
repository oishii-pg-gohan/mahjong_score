import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/common/switcher.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/enabled_share_yakus_provider.dart';
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

    bool menzen = ref.watch(menzenSelectedProvider);

    return Switcher(
      disabled: false,
      val: val,
      onChanged: (checked) {
        ref.read(tsumoSelectedProvider.notifier).state = checked;
        if (menzen) {
          if (checked) {
            ref.read(selectedYakusProvider.notifier).add(YakuId.tsumo);
            ref.read(enabledShareYakusProvider.notifier).extract(YakuId.tsumo);
          } else {
            List<YakuId> deletedYakus =
                ref.read(selectedYakusProvider.notifier).delete(YakuId.tsumo);

            // 門前自摸を取り除いた選択済みのIDリストから、共有可能な役一覧を抽出し直す
            ref
                .read(enabledShareYakusProvider.notifier)
                .extractFromIds(deletedYakus);
          }
        }
      },
    );
  }
}
