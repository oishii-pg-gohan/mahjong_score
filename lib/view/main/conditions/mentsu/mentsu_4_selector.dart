import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_selector.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';

class Mentsu4Selector extends ConsumerWidget {
  const Mentsu4Selector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MentsuSelector(
      no: 4,
      fuMentsu: ref.watch(mentsu4Provider),
      onChanged: (FuMentsu? selected) =>
          ref.read(mentsu4Provider.notifier).state = selected!,
    );
  }
}
