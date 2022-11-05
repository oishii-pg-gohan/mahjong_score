import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class ResultFuTsumo extends ConsumerWidget {
  const ResultFuTsumo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int fu = 0;
    if (ref.watch(tsumoSelectedProvider)) {
      fu = 2;
    }

    return Center(
      child: Text(
        'ツモ：$fu',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
