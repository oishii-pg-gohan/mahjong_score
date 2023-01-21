import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yaku_selector.dart';

class YakusSelector extends ConsumerWidget {
  const YakusSelector({
    required this.yakuIds,
    this.custonActionWhenSelected,
    super.key,
  });

  final List<YakuId> yakuIds;
  final Function(YakuId, bool)? custonActionWhenSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
          children: yakuIds
              .map((e) => mapYaku[e]!)
              .map(
                (e) => YakuSelector(
                  id: e.id,
                  name: e.name,
                  customAction: custonActionWhenSelected,
                ),
              )
              .toList()),
    );
  }
}
