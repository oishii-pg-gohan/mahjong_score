import 'package:mahjong_score/data/finish/finish.dart';

class FinishKo extends Finish {
  FinishKo({
    required scoreRon,
    required this.scoreFromOya,
    required this.scoreFromKo,
  }) : super(scoreRon: scoreRon);

  final int scoreFromOya;
  final int scoreFromKo;
}
