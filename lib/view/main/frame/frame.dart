import 'package:flutter/material.dart';
import 'package:mahjong_score/const.dart';

class Frame extends StatelessWidget {
  const Frame({
    required this.title,
    required this.child,
    super.key,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 80),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kColorPrimary,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(child: child),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Center(
              child: Text(title),
            ),
          ),
        ),
      ],
    );
  }
}
