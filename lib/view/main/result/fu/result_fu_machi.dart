import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';

class ResultFuMachi extends ConsumerWidget {
  const ResultFuMachi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int fu = mapFuMachi[ref.watch(machiProvider)]!;

    return Center(
      child: Text(
        '待ち：$fu',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
