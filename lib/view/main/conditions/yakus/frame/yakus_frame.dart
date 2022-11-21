import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/yakus/selected_yakus/selected_yakus.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_one/yakus_open_button_one.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_six/yakus_open_button_six.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_three/yakus_open_button_three.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_two/yakus_open_button_two.dart';
import 'package:mahjong_score/view/main/conditions/yakus/yakus_yakuman/yakus_open_button_yakuman.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class YakusFrame extends ConsumerWidget {
  const YakusFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Frame(
      title: '役',
      child: Column(
        children: [
          const SelectedYakus(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              YakusOpenButtonOne(),
              SizedBox(width: 8),
              YakusOpenButtonTwo(),
              SizedBox(width: 8),
              YakusOpenButtonThree(),
              SizedBox(width: 8),
              YakusOpenButtonSix(),
              SizedBox(width: 8),
              YakusOpenButtonYakuman(),
            ],
          ),
        ],
      ),
    );
  }
}
