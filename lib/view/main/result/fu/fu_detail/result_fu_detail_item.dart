import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultFuDetailItem extends ConsumerWidget {
  const ResultFuDetailItem(
      {required this.title, required this.fu, required this.keyFu, super.key});

  final String title;
  final int fu;
  final String keyFu;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$title：$fu',
          style: const TextStyle(fontSize: 20),
          key: ValueKey(keyFu),
        ),
      ],
    );
  }
}
