import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/atama/atama_frame.dart';
import 'package:mahjong_score/view/main/conditions/dora/dora_frame.dart';
import 'package:mahjong_score/view/main/conditions/honba/honba_frame.dart';
import 'package:mahjong_score/view/main/conditions/machi/machi_frame.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_frame.dart';
import 'package:mahjong_score/view/main/conditions/menzen/menzen_frame.dart';
import 'package:mahjong_score/view/main/conditions/oyako/oyako_frame.dart';
import 'package:mahjong_score/view/main/conditions/tsumo/tsumo_frame.dart';
import 'package:mahjong_score/view/main/conditions/yakus/frame/yakus_frame.dart';

class ConditionsAreaS extends ConsumerWidget {
  const ConditionsAreaS({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            const YakusFrame(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: DoraFrame(),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: HonbaFrame(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: MenzenFrame(),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TsumoFrame(),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: OyakoFrame(),
                ),
              ],
            ),
            const MentsuFrame(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: AtamaFrame(),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: MachiFrame(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
