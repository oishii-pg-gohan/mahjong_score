import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/view/main/result/score/common/result_score_ron.dart';
import 'package:mahjong_score/view/main/result/score/common/result_score_tsumo_ko.dart';
import 'package:mahjong_score/view/main/result/score/common/result_score_tsumo_oya.dart';
import 'package:mahjong_score/view/main/result/score/common/result_score_unknown.dart';
import 'package:mahjong_score/view/states/oyako/oyako_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class ResultScoreCommon extends ConsumerWidget {
  const ResultScoreCommon({required this.id, super.key});

  final FinishId id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (id == FinishId.unknonw) {
      return const ResultScoreUnknown();
    }

    bool oya = ref.watch(oyakoSelectedProvider);
    bool tsumo = ref.watch(tsumoSelectedProvider);

    if (oya) {
      FinishOya finishOya = mapFinishOya[id]!;
      return tsumo
          ? ResultScoreTsumoOya(score: finishOya.scoreAll)
          : ResultScoreRon(score: finishOya.scoreRon);
    } else {
      FinishKo finishKo = mapFinishKo[id]!;
      return tsumo
          ? ResultScoreTsumoKo(
              scoreFromKo: finishKo.scoreFromKo,
              scoreFromOya: finishKo.scoreFromOya)
          : ResultScoreRon(score: finishKo.scoreRon);
    }
  }
}
