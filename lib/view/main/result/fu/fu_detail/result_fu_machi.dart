import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultFuMachi extends ConsumerWidget {
  const ResultFuMachi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    int fu = 0;
    if (!selectedYakuIds.contains(YakuId.chitoitsu)) {
      fu = mapFuMachi[ref.watch(machiProvider)]!;
    }

    return ResultFuDetailItem(
      title: '待ち',
      fu: fu,
      keyFu: 'fu-machi',
    );
  }
}
