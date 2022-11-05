import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/states/oyako/oyako_selected_provider.dart';

class OyakoSelector extends ConsumerWidget {
  const OyakoSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Text('親'),
        Switch(
          value: ref.watch(oyakoSelectedProvider),
          activeColor: kColorPrimary,
          onChanged: (val) =>
              ref.read(oyakoSelectedProvider.notifier).state = val,
        ),
      ],
    );
  }
}
