import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail.dart';
import 'package:mahjong_score/view/main/result/fu/result_fu.dart';
import 'package:mahjong_score/view/main/result/han/result_han.dart';
import 'package:mahjong_score/view/main/result/score/result_score.dart';

class ResultAreaS extends ConsumerWidget {
  const ResultAreaS({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: const [
            Expanded(
              flex: 1,
              child: ResultHan(),
            ),
            Expanded(
              flex: 1,
              child: ResultFu(),
            ),
            Expanded(
              flex: 2,
              child: ResultScore(),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const ResultFuDetail(),
      ],
    );
  }
}
