import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/machi/machi_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class MachiFrame extends ConsumerWidget {
  const MachiFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: '待ち',
      child: MachiSelector(),
    );
  }
}
