import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';

class ResultScoreRon extends ConsumerWidget {
  const ResultScoreRon({
    required this.score,
    super.key,
  });

  final int score;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int honba = ref.watch(honbaCntProvider);
    return Center(
      child: Text(
        '${score + honba * 300}点',
        style: const TextStyle(fontSize: 26),
        key: const ValueKey('result-score-ron'),
      ),
    );
  }
}
