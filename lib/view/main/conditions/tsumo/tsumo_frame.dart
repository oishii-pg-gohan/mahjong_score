import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/tsumo/tsumo_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class TsumoFrame extends ConsumerWidget {
  const TsumoFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: 'ツモ',
      child: TsumoSelector(),
    );
  }
}
