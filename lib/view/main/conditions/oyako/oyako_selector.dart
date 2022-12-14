import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/common/switcher.dart';
import 'package:mahjong_score/view/states/oyako/oyako_selected_provider.dart';

class OyakoSelector extends ConsumerWidget {
  const OyakoSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Switcher(
      disabled: false,
      val: ref.watch(oyakoSelectedProvider),
      onChanged: (val) => ref.read(oyakoSelectedProvider.notifier).state = val,
    );
  }
}
