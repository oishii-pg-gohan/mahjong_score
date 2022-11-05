import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/const.dart';
import 'package:mahjong_score/data/fu/fus.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';

class AtamaSelector extends ConsumerWidget {
  const AtamaSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<FuAtama>(
      isExpanded: false,
      value: null,
      hint: Row(
        children: [
          Text('アタマ：${mapFuAtamaName[ref.watch(atamaProvider)]}'),
        ],
      ),
      elevation: 10,
      // style: const TextStyle(color: Colors.grey),
      icon: null,
      underline: Container(
        height: 2,
        color: kColorPrimary,
      ),
      onChanged: (FuAtama? selected) =>
          ref.read(atamaProvider.notifier).state = selected!,
      items: _buildItems(context, ref),
    );
  }

  List<DropdownMenuItem<FuAtama>> _buildItems(
      BuildContext context, WidgetRef ref) {
    List<DropdownMenuItem<FuAtama>> items = [];

    for (FuAtama fuAtama in mapFuAtama.keys) {
      items.add(
        DropdownMenuItem(
          value: fuAtama,
          child: Text('${mapFuAtamaName[fuAtama]}'),
        ),
      );
    }

    return items;
  }
}
