import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/model/yaku_handler.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_item.dart';
import 'package:mahjong_score/view/main/result/fu/fu_detail/result_fu_detail_none.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

const String _title = '面子';

class ResultFuMentsu extends ConsumerWidget {
  const ResultFuMentsu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);

    if (containsYakuman(selectedYakuIds)) {
      return const ResultFuDetailNone(
        title: _title,
        keyFu: 'fu-mentsu-none',
      );
    }

    int fu = getFuMentsu(
      ref.watch(mentsu1Provider),
      ref.watch(mentsu2Provider),
      ref.watch(mentsu3Provider),
      ref.watch(mentsu4Provider),
    );

    return ResultFuDetailItem(
      title: _title,
      fu: fu,
      keyFu: 'fu-mentsu',
    );
  }
}
