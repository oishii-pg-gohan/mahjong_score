import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/conditions/oyako/oyako_selector.dart';
import 'package:mahjong_score/view/main/frame/frame.dart';

class OyakoFrame extends ConsumerWidget {
  const OyakoFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Frame(
      title: '親',
      child: OyakoSelector(),
    );
  }
}
