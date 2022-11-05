import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_selector.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';

class Mentsu1Selector extends ConsumerWidget {
  const Mentsu1Selector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MentsuSelector(
      no: 1,
      fuMentsu: ref.watch(mentsu1Provider),
      onChanged: (FuMentsu? selected) =>
          ref.read(mentsu1Provider.notifier).state = selected!,
    );
  }
}
