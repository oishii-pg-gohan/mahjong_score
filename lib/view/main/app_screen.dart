import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/view/main/screen/app_screen_s.dart';

class AppScreen extends ConsumerWidget {
  static const String id = 'app_screen';

  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AppScreenS();
  }
}
