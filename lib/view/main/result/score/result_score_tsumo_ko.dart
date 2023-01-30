import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';

class ResultScoreTsumoKo extends ConsumerWidget {
  const ResultScoreTsumoKo({
    required this.scoreFromKo,
    required this.scoreFromOya,
    super.key,
  });

  final int scoreFromKo;
  final int scoreFromOya;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int honba = ref.watch(honbaCntProvider);
    return Center(
      child: Column(
        children: [
          Text(
            '子：${scoreFromKo + honba * 100}点',
            style: const TextStyle(fontSize: 26),
            key: const ValueKey('result-score-tsumo-ko-ko'),
          ),
          Text(
            '親：${scoreFromOya + honba * 100}点',
            style: const TextStyle(fontSize: 26),
            key: const ValueKey('result-score-tsumo-ko-oya'),
          ),
        ],
      ),
    );
  }
}
