import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/menzen/menzen_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class MenzenFrame extends ConsumerWidget {
  const MenzenFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: '門前',
      child: MenzenSelector(),
    );
  }
}
