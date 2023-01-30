import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';

class ResultFuAtama extends ConsumerWidget {
  const ResultFuAtama({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FuAtama fuAtama = ref.watch(atamaProvider);
    int fu = mapFuAtama[fuAtama]!;

    return ResultFuDetailItem(
      title: 'アタマ',
      fu: fu,
      keyFu: 'fu-atama',
    );
  }
}
