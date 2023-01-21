import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';

const List<YakuId> yakuIdsTwo = [
  YakuId.wreach,
  YakuId.toitoiho,
  YakuId.chitoitsu,
  YakuId.sananko,
  YakuId.sanshokudojun,
  YakuId.sanshokudoko,
  YakuId.ikkitsukan,
  YakuId.chanta,
  YakuId.honroto,
  YakuId.shosangen,
  YakuId.sankantsu,
];

class YakusTwo extends ConsumerWidget {
  const YakusTwo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return YakusSelector(
      yakuIds: yakuIdsTwo,
      custonActionWhenSelected: (YakuId id, bool checked) {
        switch (id) {
          case YakuId.wreach:
            _actionWReach(ref, checked);
            break;
          case YakuId.chitoitsu:
            _actionChitoitsu(ref, checked);
            break;
          default:
            break;
        }
      },
    );
  }

  _actionWReach(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
    }
  }

  _actionChitoitsu(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
      ref.read(mentsu1Provider.notifier).state = FuMentsu.none;
      ref.read(mentsu2Provider.notifier).state = FuMentsu.none;
      ref.read(mentsu3Provider.notifier).state = FuMentsu.none;
      ref.read(mentsu4Provider.notifier).state = FuMentsu.none;
      ref.read(machiProvider.notifier).state = FuMachi.tanki;
    }
  }
}
