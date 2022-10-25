import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppScreen extends ConsumerWidget {
  static const String id = 'app_screen';

  const AppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[600],
        body: Container(
          color: Colors.green,
          child: const Text('mahjong_socre'),
        ),
      ),
    );
  }
}
