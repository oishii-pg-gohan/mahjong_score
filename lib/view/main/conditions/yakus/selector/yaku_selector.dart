import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/view/states/yakus/enabled_share_yakus_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class YakuSelector extends ConsumerWidget {
  const YakuSelector({
    required this.id,
    required this.name,
    this.customAction,
    Key? key,
  }) : super(key: key);

  final YakuId id;
  final String name;
  final Function? customAction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<YakuId> selectedYakuIds = ref.watch(selectedYakusProvider);
    return CheckboxListTile(
      enabled: selectedYakuIds.contains(id) ||
          ref.watch(enabledShareYakusProvider).contains(id),
      title: Text(name),
      value: selectedYakuIds.contains(id),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (val) {
        if (val!) {
          ref.read(selectedYakusProvider.notifier).add(id);
          ref.read(enabledShareYakusProvider.notifier).extractId(id);
          if (customAction != null) {
            customAction!();
          }
        } else {
          ref.read(selectedYakusProvider.notifier).delete(id);
          List<YakuId> deletedIds =
              selectedYakuIds.where((e) => e != id).toList();
          ref.read(enabledShareYakusProvider.notifier).reExtractId(deletedIds);
        }
      },
    );
  }
}
