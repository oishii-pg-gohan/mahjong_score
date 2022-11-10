import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/result/score/common/result_score_unknown.dart';
import 'package:mahjong_score/view/main/result/score/regular/result_score_regular.dart';
import 'package:mahjong_score/view/main/result/score/yakuman/result_score_yakuman.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultScore extends ConsumerWidget {
  const ResultScore({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    if (selectedYakuIds.isEmpty) {
      return const ResultScoreUnknown();
    } else if (containsYakuman(selectedYakuIds)) {
      return ResultScoreYakuman(
        cntYakuman: selectedYakuIds.length,
      );
    } else {
      return const ResultScoreRegular();
    }
  }
}
