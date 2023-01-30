import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultFuKihon extends ConsumerWidget {
  const ResultFuKihon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    int fu = getFuKihon(
      selectedYakuIds.contains(YakuId.chitoitsu),
      ref.watch(menzenSelectedProvider),
      ref.watch(tsumoSelectedProvider),
    );

    return ResultFuDetailItem(
      title: '基本',
      fu: fu,
      keyFu: 'fu-kihon',
    );
  }
}
