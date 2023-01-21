import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/conditions/atama/atama_frame.dart';
import 'package:mahjong_score/view/main/conditions/dora/dora_frame.dart';
import 'package:mahjong_score/view/main/conditions/honba/honba_frame.dart';
import 'package:mahjong_score/view/main/conditions/machi/machi_frame.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_frame.dart';
import 'package:mahjong_score/view/main/conditions/menzen/menzen_frame.dart';
import 'package:mahjong_score/view/main/conditions/oyako/oyako_frame.dart';
import 'package:mahjong_score/view/main/conditions/tsumo/tsumo_frame.dart';
import 'package:mahjong_score/view/main/conditions/yakus/frame/yakus_frame.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ConditionsAreaS extends ConsumerWidget {
  const ConditionsAreaS({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    bool hasPinfu = selectedYakuIds.contains(YakuId.pinfu);
    bool hasChitoitsu = selectedYakuIds.contains(YakuId.chitoitsu);
    bool hasYakuman = containsYakuman(selectedYakuIds);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            const YakusFrame(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!hasYakuman)
                  const Expanded(
                    child: DoraFrame(),
                  ),
                if (!hasYakuman)
                  const SizedBox(
                    width: 8,
                  ),
                const Expanded(
                  child: HonbaFrame(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!hasYakuman)
                  const Expanded(
                    child: MenzenFrame(),
                  ),
                if (!hasYakuman)
                  const SizedBox(
                    width: 8,
                  ),
                const Expanded(
                  child: TsumoFrame(),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Expanded(
                  child: OyakoFrame(),
                ),
              ],
            ),
            if (!hasPinfu && !hasChitoitsu && !hasYakuman) const MentsuFrame(),
            if (!hasPinfu && !hasChitoitsu && !hasYakuman)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Expanded(
                    child: AtamaFrame(),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: MachiFrame(),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
