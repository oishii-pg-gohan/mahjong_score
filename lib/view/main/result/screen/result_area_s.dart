import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/result/screen/result_score_unknown.dart';
import 'package:mahjong_score/view/main/result/screen/result_detail.dart';
import 'package:mahjong_score/view/main/result/screen/result_yaku_empty.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/model/finish_id_handler.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class ResultAreaS extends ConsumerWidget {
  const ResultAreaS({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    if (selectedYakuIds.isEmpty) {
      return const ResultYakuEmpty();
    } else {
      FinishId finishId = _getFinishId(ref);
      if (finishId == FinishId.unknonw) {
        return const ResultScoreUnknown();
      } else {
        return ResultDetail(
          finishId: finishId,
        );
      }
    }
  }

  /// FinishIdを取得します。
  /// 現在選択されている条件に該当するFinishIdが存在しない場合はFinishId.unknownを返却します。
  ///
  FinishId _getFinishId(WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    if (containsYakuman(selectedYakuIds)) {
      return _getYakumanFinishId(selectedYakuIds.length);
    }

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

    return getFinishId(
      han,
      mapFu[fu]!,
      selectedYakuIds.contains(YakuId.pinfu),
      selectedYakuIds.contains(YakuId.chitoitsu),
    );
  }

  FinishId _getYakumanFinishId(int cntYakuman) {
    switch (cntYakuman) {
      case 1:
        return FinishId.yakuman;
      case 2:
        return FinishId.yakuman2;
      case 3:
        return FinishId.yakuman3;
      case 4:
        return FinishId.yakuman4;
      default:
        return FinishId.unknonw;
    }
  }
}
