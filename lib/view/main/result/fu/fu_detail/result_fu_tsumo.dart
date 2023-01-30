import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultFuTsumo extends ConsumerWidget {
  const ResultFuTsumo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool tsumo = ref.watch(tsumoSelectedProvider);
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    int fu = 0;
    if (tsumo &&
        !selectedYakuIds.contains(YakuId.pinfu) &&
        !selectedYakuIds.contains(YakuId.chitoitsu)) {
      fu = 2;
    }

    return ResultFuDetailItem(
      title: 'ツモ',
      fu: fu,
      keyFu: 'fu-tsumo',
    );
  }
}
