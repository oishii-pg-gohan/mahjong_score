import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_1_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_2_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_3_selector.dart';
import 'package:mahjong_score/view/main/conditions/mentsu/mentsu_4_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class MentsuFrame extends ConsumerWidget {
  const MentsuFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Frame(
      title: '面子',
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Mentsu1Selector(),
              Mentsu2Selector(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Mentsu3Selector(),
              Mentsu4Selector(),
            ],
          ),
        ],
      ),
    );
  }
}
