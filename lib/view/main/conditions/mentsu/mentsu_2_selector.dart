import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_selector.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';

class Mentsu2Selector extends ConsumerWidget {
  const Mentsu2Selector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MentsuSelector(
      no: 2,
      fuMentsu: ref.watch(mentsu2Provider),
      onChanged: (FuMentsu? selected) =>
          ref.read(mentsu2Provider.notifier).state = selected!,
    );
  }
}
