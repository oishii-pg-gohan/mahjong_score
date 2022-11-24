import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/view/main/result/score/result_score.dart';

class ResultScoreYakuman extends ConsumerWidget {
  const ResultScoreYakuman({required this.cntYakuman, super.key});

  final int cntYakuman;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FinishId id = _getYakumanFinishId();
    return ResultScore(id: id);
  }

  FinishId _getYakumanFinishId() {
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
