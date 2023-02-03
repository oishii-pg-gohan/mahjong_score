import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_none.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

const String _title = '待ち';

class ResultFuMachi extends ConsumerWidget {
  const ResultFuMachi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    if (containsYakuman(selectedYakuIds)) {
      return const ResultFuDetailNone(
        title: _title,
        keyFu: 'fu-machi-none',
      );
    }

    int fu = 0;
    if (!selectedYakuIds.contains(YakuId.chitoitsu)) {
      fu = mapFuMachi[ref.watch(machiProvider)]!;
    }

    return ResultFuDetailItem(
      title: _title,
      fu: fu,
      keyFu: 'fu-machi',
    );
  }
}
