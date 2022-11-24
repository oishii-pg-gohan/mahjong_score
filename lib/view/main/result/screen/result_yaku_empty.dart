import 'package:flutter/material.dart';

class ResultYakuEmpty extends StatelessWidget {
  const ResultYakuEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '役を選択してください。',
        style: TextStyle(fontSize: 26),
      ),
    );
  }
}
