import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultFuDetailNone extends ConsumerWidget {
  const ResultFuDetailNone(
      {required this.title, required this.keyFu, super.key});

  final String title;
  final String keyFu;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$title：-',
          style: const TextStyle(fontSize: 20),
          key: ValueKey(keyFu),
        ),
      ],
    );
  }
}
