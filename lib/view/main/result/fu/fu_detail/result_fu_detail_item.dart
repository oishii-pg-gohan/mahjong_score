import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultFuDetailItem extends ConsumerWidget {
  const ResultFuDetailItem({required this.title, required this.fu, super.key});

  final String title;
  final int fu;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20),
        ),
        const Text(
          '：',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '$fu',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
