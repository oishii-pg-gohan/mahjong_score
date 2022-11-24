import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_atama.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_kihon.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_machi.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_mentsu.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_tsumo.dart';

class ResultFuDetail extends ConsumerWidget {
  const ResultFuDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        Text(
          '符：内訳',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        ResultFuKihon(),
        ResultFuMentsu(),
        ResultFuAtama(),
        ResultFuMachi(),
        ResultFuTsumo(),
      ],
    );
  }
}
