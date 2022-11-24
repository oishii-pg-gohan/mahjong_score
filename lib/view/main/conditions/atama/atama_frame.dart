import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/atama/atama_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class AtamaFrame extends ConsumerWidget {
  const AtamaFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: 'アタマ',
      child: AtamaSelector(),
    );
  }
}
