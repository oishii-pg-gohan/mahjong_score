import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_selector.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';

class Mentsu3Selector extends ConsumerWidget {
  const Mentsu3Selector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MentsuSelector(
      no: 3,
      fuMentsu: ref.watch(mentsu3Provider),
      onChanged: (FuMentsu? selected) =>
          ref.read(mentsu3Provider.notifier).state = selected!,
    );
  }
}
