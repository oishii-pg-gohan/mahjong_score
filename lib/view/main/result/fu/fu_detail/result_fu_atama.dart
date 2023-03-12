import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_none.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

const String _title = 'アタマ';

class ResultFuAtama extends ConsumerWidget {
  const ResultFuAtama({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    if (containsYakuman(selectedYakuIds)) {
      return const ResultFuDetailNone(
        title: _title,
        keyFu: 'fu-atama-none',
      );
    }

    FuAtama fuAtama = ref.watch(atamaProvider);
    int fu = mapFuAtama[fuAtama]!;

    return ResultFuDetailItem(
      title: _title,
      fu: fu,
      keyFu: 'fu-atama',
    );
  }
}
