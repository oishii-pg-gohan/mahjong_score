import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/model/fu_handler.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';

class ResultFuMentsu extends ConsumerWidget {
  const ResultFuMentsu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int fu = getFuMentsu(
      ref.watch(mentsu1Provider),
      ref.watch(mentsu2Provider),
      ref.watch(mentsu3Provider),
      ref.watch(mentsu4Provider),
    );

    return Center(
      child: Text(
        '面子：$fu',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
