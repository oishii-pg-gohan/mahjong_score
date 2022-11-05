import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class ResultFuKihon extends ConsumerWidget {
  const ResultFuKihon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int fu = getFuKihon(
      ref.watch(menzenSelectedProvider),
      ref.watch(tsumoSelectedProvider),
    );

    return Center(
      child: Text(
        '基本：$fu',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
