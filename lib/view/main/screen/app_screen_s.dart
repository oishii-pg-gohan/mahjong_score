import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/screen/conditions_area_s.dart';
import 'package:mahjong_score/view/main/result/screen/result_area_s.dart';
import 'package:mahjong_score/view/states/dora/dora_cnt_provider.dart';
import 'package:mahjong_score/view/states/fu/atama/atama_provider.dart';
import 'package:mahjong_score/view/states/fu/machi/machi_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu1_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu2_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu3_provider.dart';
import 'package:mahjong_score/view/states/fu/mentsu/mentsu4_provider.dart';
import 'package:mahjong_score/view/states/honba/honba_cnt_provider.dart';
import 'package:mahjong_score/view/states/menzen/menzen_selected_provider.dart';
import 'package:mahjong_score/view/states/oyako/oyako_selected_provider.dart';
import 'package:mahjong_score/view/states/tsumo/tsumo_selected_provider.dart';
import 'package:mahjong_score/view/states/yakus/enabled_share_yakus_provider.dart';
import 'package:mahjong_score/view/states/yakus/selected_yakus_provider.dart';

class AppScreenS extends ConsumerWidget {
  const AppScreenS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('まーじゃん てんすうけいさん'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  ConditionsAreaS(),
                  SizedBox(
                    height: 10,
                  ),
                  ResultAreaS(),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.delete),
          onPressed: () {
            ref.read(doraCntProvider.notifier).state = initialDora;
            ref.read(atamaProvider.notifier).state = initialFuAtama;
            ref.read(machiProvider.notifier).state = initialFuMachi;
            ref.read(mentsu1Provider.notifier).state = initialMentsu1;
            ref.read(mentsu2Provider.notifier).state = initialMentsu2;
            ref.read(mentsu3Provider.notifier).state = initialMentsu3;
            ref.read(mentsu4Provider.notifier).state = initialMentsu4;
            ref.read(honbaCntProvider.notifier).state = initialHonba;
            ref.read(menzenSelectedProvider.notifier).state = initialMenzen;
            ref.read(oyakoSelectedProvider.notifier).state = initialOya;
            ref.read(tsumoSelectedProvider.notifier).state = initialTsumo;
            ref.read(enabledShareYakusProvider.notifier).reset();
            ref.read(selectedYakusProvider.notifier).clear();
          },
        ),
      ),
    );
  }
}
