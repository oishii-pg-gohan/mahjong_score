import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/common/switcher.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/enabled_share_yakus_provider.dart';
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

    bool tsumo = ref.watch(tsumoSelectedProvider);

    return Switcher(
      disabled: containedMenzen || containedYakuman,
      val: val,
      onChanged: (checked) {
        ref.read(menzenSelectedProvider.notifier).state = checked;
        if (tsumo) {
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
