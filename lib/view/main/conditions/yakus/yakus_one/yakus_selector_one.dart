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
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

const List<YakuId> yakuIdsOne = [
  YakuId.tsumo,
  YakuId.reach,
  YakuId.ippatsu,
  YakuId.pinfu,
  YakuId.tanyao,
  YakuId.ipeiko,
  YakuId.tonBa,
  YakuId.nanBa,
  YakuId.tonKaze,
  YakuId.nanKaze,
  YakuId.sha,
  YakuId.pei,
  YakuId.haku,
  YakuId.hatsu,
  YakuId.chun,
  YakuId.chankan,
  YakuId.rinshankaiho,
  YakuId.haitei,
  YakuId.hotei,
];

class YakusOne extends ConsumerWidget {
  const YakusOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return YakusSelector(
      yakuIds: yakuIdsOne,
      custonActionWhenSelected: (YakuId id, bool checked) {
        switch (id) {
          case YakuId.tsumo:
            _actionTsumo(ref, checked);
            break;
          case YakuId.reach:
            _actionReach(ref, checked);
            break;
          case YakuId.pinfu:
            _actionPinfu(ref, checked);
            break;
          case YakuId.ipeiko:
            _actionIpeiko(ref, checked);
            break;
          default:
            break;
        }
      },
    );
  }

  _actionTsumo(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
      ref.read(tsumoSelectedProvider.notifier).state = true;
    } else {
      if (ref.watch(menzenSelectedProvider)) {
        ref.read(tsumoSelectedProvider.notifier).state = false;
      }
    }
  }

  _actionReach(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
    }
  }

  _actionPinfu(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
      ref.read(mentsu1Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu2Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu3Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu4Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(machiProvider.notifier).state = FuMachi.ryanmen;
    }
  }

  _actionIpeiko(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
      ref.read(mentsu1Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu2Provider.notifier).state = FuMentsu.shuntsu;
    }
  }
}
