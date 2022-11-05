import 'package:mahjong_score/data/finish/finish.dart';

class FinishOya extends Finish {
  FinishOya({
    required scoreRon,
    required this.scoreAll,
  }) : super(scoreRon: scoreRon);

  final int scoreAll;
}
