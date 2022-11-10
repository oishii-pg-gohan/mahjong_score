import 'package:flutter/material.dart';

class ResultScoreUnknown extends StatelessWidget {
  const ResultScoreUnknown({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '条件を選択してください。',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
