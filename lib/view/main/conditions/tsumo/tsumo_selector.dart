import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';

class TsumoSelector extends ConsumerWidget {
  const TsumoSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Switch(
      value: ref.watch(tsumoSelectedProvider),
      activeColor: kColorPrimary,
      onChanged: (val) => ref.read(tsumoSelectedProvider.notifier).state = val,
    );
  }
}
