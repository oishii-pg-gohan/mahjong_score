import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/result/score/common/result_score_common.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultScoreRegular extends ConsumerWidget {
  const ResultScoreRegular({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    bool menzen = ref.watch(menzenSelectedProvider);
    int han = getHanYakus(selectedYakuIds, menzen);

    int fu = getFu(
        selectedYakuIds.contains(YakuId.pinfu),
        selectedYakuIds.contains(YakuId.chitoitsu),
        menzen,
        ref.watch(tsumoSelectedProvider),
        ref.watch(mentsu1Provider),
        ref.watch(mentsu2Provider),
        ref.watch(mentsu3Provider),
        ref.watch(mentsu4Provider),
        ref.watch(atamaProvider),
        ref.watch(machiProvider));

    han += ref.watch(doraCntProvider);
    FinishId finishId = getFinishId(
      han,
      mapFu[fu]!,
      selectedYakuIds.contains(YakuId.pinfu),
      selectedYakuIds.contains(YakuId.chitoitsu),
    );

    return ResultScoreCommon(id: finishId);
  }
}
