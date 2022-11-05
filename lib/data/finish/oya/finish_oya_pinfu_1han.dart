import 'package:mahjong_score/data/finish/finish_oya.dart';

class FinishOyaPinfu1Han extends FinishOya {
  FinishOyaPinfu1Han()
      : super(scoreRon: 1500, scoreAll: 0); // 平和、ツモで1翻はありえないため、scoreAllは0とする
}
