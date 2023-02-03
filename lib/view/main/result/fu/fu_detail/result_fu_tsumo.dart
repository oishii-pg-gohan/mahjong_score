import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_none.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

const String _title = 'ツモ';

class ResultFuTsumo extends ConsumerWidget {
  const ResultFuTsumo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool tsumo = ref.watch(tsumoSelectedProvider);
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    if (containsYakuman(selectedYakuIds)) {
      return const ResultFuDetailNone(
        title: _title,
        keyFu: 'fu-tsumo-none',
      );
    }

    int fu = 0;
    if (tsumo &&
        !selectedYakuIds.contains(YakuId.pinfu) &&
        !selectedYakuIds.contains(YakuId.chitoitsu)) {
      fu = 2;
    }

    return ResultFuDetailItem(
      title: _title,
      fu: fu,
      keyFu: 'fu-tsumo',
    );
  }
}
