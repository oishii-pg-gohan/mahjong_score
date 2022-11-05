import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';

class MenzenSelector extends ConsumerWidget {
  const MenzenSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Text('門前'),
        Switch(
          value: ref.watch(menzenSelectedProvider),
          activeColor: kColorPrimary,
          onChanged: (val) =>
              ref.read(menzenSelectedProvider.notifier).state = val,
        ),
      ],
    );
  }
}
