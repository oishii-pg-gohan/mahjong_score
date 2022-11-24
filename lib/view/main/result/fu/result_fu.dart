import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class ResultFu extends ConsumerWidget {
  const ResultFu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    if (containsYakuman(selectedYakuIds)) {
      return const Center(
        child: Text(
          '-符',
          style: TextStyle(fontSize: 26),
        ),
      );
    }
    int fu = getFu(
        selectedYakuIds.contains(YakuId.pinfu),
        selectedYakuIds.contains(YakuId.chitoitsu),
        ref.watch(menzenSelectedProvider),
        ref.watch(tsumoSelectedProvider),
        ref.watch(mentsu1Provider),
        ref.watch(mentsu2Provider),
        ref.watch(mentsu3Provider),
        ref.watch(mentsu4Provider),
        ref.watch(atamaProvider),
        ref.watch(machiProvider));

    return Center(
      child: Text(
        '$fu符',
        style: const TextStyle(fontSize: 26),
      ),
    );
  }
}
