import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';

class ResultFuAtama extends ConsumerWidget {
  const ResultFuAtama({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FuAtama fuAtama = ref.watch(atamaProvider);
    int fu = mapFuAtama[fuAtama]!;

    return Center(
      child: Text(
        'アタマ：$fu',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
