import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';

const List<YakuId> yakuIdsYakuman = [
  YakuId.daisangen,
  YakuId.daisushi,
  YakuId.shosushi,
  YakuId.tsuiso,
  YakuId.ryuiso,
  YakuId.suanko,
  YakuId.suankoTanki,
  YakuId.sukantsu,
  YakuId.chinroto,
  YakuId.churenpoto,
  YakuId.kokushimuso,
  YakuId.tenho,
  YakuId.chiho,
];

class YakusYakuman extends ConsumerWidget {
  const YakusYakuman({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return YakusSelector(
      yakuIds: yakuIdsYakuman,
      custonActionWhenSelected: (YakuId id, bool checked) {
        if (checked) {
          ref.read(doraCntProvider.notifier).state = initialDora;
          ref.read(mentsu1Provider.notifier).state = initialMentsu1;
          ref.read(mentsu2Provider.notifier).state = initialMentsu2;
          ref.read(mentsu3Provider.notifier).state = initialMentsu3;
          ref.read(mentsu4Provider.notifier).state = initialMentsu4;
          ref.read(atamaProvider.notifier).state = initialFuAtama;
          ref.read(machiProvider.notifier).state = initialFuMachi;
        }
      },
    );
  }
}
