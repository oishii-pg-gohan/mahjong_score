import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selector/yakus_button.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_two/yakus_selector_two.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class YakusOpenButtonTwo extends ConsumerWidget {
  const YakusOpenButtonTwo({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    bool selected = selectedYakuIds
        .where((element) => yakuIdsTwo.contains(element))
        .isNotEmpty;

    return YakusOpenButton(
      text: '2翻',
      selected: selected,
      yakusList: const YakusTwo(),
    );
  }
}
