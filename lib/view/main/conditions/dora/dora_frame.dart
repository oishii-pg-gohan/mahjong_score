import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/dora/dora_cnt_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class DoraFrame extends ConsumerWidget {
  const DoraFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: 'ドラ',
      child: DoraCntSelector(),
    );
  }
}
