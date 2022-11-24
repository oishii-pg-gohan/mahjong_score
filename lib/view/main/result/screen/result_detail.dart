import 'package:flutter/material.dart';
import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail.dart';
import 'package:mahjong_score/view/main/result/fu/result_fu.dart';
import 'package:mahjong_score/view/main/result/score/result_score.dart';

import '../han/result_han.dart';

class ResultDetail extends StatelessWidget {
  const ResultDetail({
    required this.finishId,
    Key? key,
  }) : super(key: key);

  final FinishId finishId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: ResultHan(),
            ),
            const Expanded(
              flex: 1,
              child: ResultFu(),
            ),
            Expanded(
              flex: 2,
              child: ResultScore(id: finishId),
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
