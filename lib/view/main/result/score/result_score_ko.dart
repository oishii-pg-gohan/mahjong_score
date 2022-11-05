import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class ResultScoreKo extends ConsumerWidget {
  const ResultScoreKo({
    required this.finishId,
    super.key,
  });

  final FinishId finishId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int honba = ref.watch(honbaCntProvider);
    bool tsumo = ref.watch(tsumoSelectedProvider);
    FinishKo finish = mapFinishKo[finishId] as FinishKo;
    if (tsumo) {
      int scoreHanFromKo = finish.scoreFromKo + honba * 100;
      int scoreHanFromOya = finish.scoreFromOya + honba * 100;
      return Center(
        child: Column(
          children: [
            Text(
              '子：$scoreHanFromKo点',
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              '親：$scoreHanFromOya点',
              style: const TextStyle(fontSize: 30),
            ),
          ],
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
