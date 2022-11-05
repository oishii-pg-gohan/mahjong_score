import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class ResultScoreOya extends ConsumerWidget {
  const ResultScoreOya({
    required this.finishId,
    super.key,
  });

  final FinishId finishId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int honba = ref.watch(honbaCntProvider);
    bool tsumo = ref.watch(tsumoSelectedProvider);
    FinishOya finish = mapFinishOya[finishId] as FinishOya;
    if (tsumo) {
      int scoreHan = finish.scoreAll + honba * 100;
      return Center(
        child: Text(
          '$scoreHan点 all',
          style: const TextStyle(fontSize: 30),
        ),
      );
    } else {
      int scoreHan = finish.scoreRon + honba * 300;
      return Center(
        child: Text(
          '$scoreHan点',
          style: const TextStyle(fontSize: 30),
        ),
      );
    }
  }
}
