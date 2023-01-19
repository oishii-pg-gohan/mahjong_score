import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_selector.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';

const List<YakuId> yakuIdsThree = [
  YakuId.ryanpeiko,
  YakuId.honitsu,
  YakuId.junchan,
];

class YakusThree extends ConsumerWidget {
  const YakusThree({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return YakusSelector(
      yakuIds: yakuIdsThree,
      custonActionWhenSelected: (YakuId id, bool checked) {
        switch (id) {
          case YakuId.ryanpeiko:
            _actionRyanpeiko(ref, checked);
            break;
          default:
            break;
        }
      },
    );
  }

  _actionRyanpeiko(WidgetRef ref, bool checked) {
    if (checked) {
      ref.read(menzenSelectedProvider.notifier).state = true;
      ref.read(mentsu1Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu2Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu3Provider.notifier).state = FuMentsu.shuntsu;
      ref.read(mentsu4Provider.notifier).state = FuMentsu.shuntsu;
    }
  }
}
