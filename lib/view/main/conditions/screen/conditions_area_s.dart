import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/atama/atama_selector.dart';
import 'package:mahjong_score/view/main/conditions/dora/dora_cnt_selector.dart';
import 'package:mahjong_score/view/main/conditions/machi/machi_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_1_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_2_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_3_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_4_selector.dart';
import 'package:mahjong_score/view/main/conditions/menzen/menzen_selector.dart';
import 'package:mahjong_score/view/main/conditions/oyako/oyako_selector.dart';
import 'package:mahjong_score/view/main/conditions/honba/honba_cnt_selector.dart';
import 'package:mahjong_score/view/main/conditions/selected_yakus/selected_yakus.dart';
import 'package:mahjong_score/view/main/conditions/tsumo/tsumo_selector.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_one/yakus_open_button_one.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_six/yakus_open_button_six.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_three/yakus_open_button_three.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_two/yakus_open_button_two.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_yakuman/yakus_open_button_yakuman.dart';

class ConditionsAreaS extends ConsumerWidget {
  const ConditionsAreaS({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SelectedYakus(),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                YakusOpenButtonOne(),
                YakusOpenButtonTwo(),
                YakusOpenButtonThree(),
                YakusOpenButtonSix(),
                YakusOpenButtonYakuman(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MenzenSelector(),
                TsumoSelector(),
                OyakoSelector(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                DoraCntSelector(),
                HonbaCntSelector(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Mentsu1Selector(),
                Mentsu2Selector(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Mentsu3Selector(),
                Mentsu4Selector(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                AtamaSelector(),
                MachiSelector(),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context, WidgetRef ref) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           YakusOpenButtonOne(),
  //           YakusOpenButtonTwo(),
  //           YakusOpenButtonThree(),
  //           YakusOpenButtonSix(),
  //           YakusOpenButtonYakuman(),
  //           const SelectedYakus(),
  //         ],
  //       ),
  //       const MenzenSelector(),
  //       const TsumoSelector(),
  //       const OyakoSelector(),
  //       const DoraCntSelector(),
  //       const HonbaCntSelector(),
  //       const Mentsu1Selector(),
  //       const Mentsu2Selector(),
  //       const Mentsu3Selector(),
  //       const Mentsu4Selector(),
  //       const MachiSelector(),
  //     ],
  //   );
  // }
}
