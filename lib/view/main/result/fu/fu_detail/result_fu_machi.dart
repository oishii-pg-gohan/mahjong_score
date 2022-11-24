import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';

class ResultFuMachi extends ConsumerWidget {
  const ResultFuMachi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int fu = mapFuMachi[ref.watch(machiProvider)]!;

    return ResultFuDetailItem(title: '待ち', fu: fu);
  }
}
