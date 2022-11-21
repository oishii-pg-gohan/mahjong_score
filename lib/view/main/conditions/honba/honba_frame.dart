import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/honba/honba_cnt_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class HonbaFrame extends ConsumerWidget {
  const HonbaFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: '本場',
      child: HonbaCntSelector(),
    );
  }
}
