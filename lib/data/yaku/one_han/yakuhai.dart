import 'package:mahjong_score/data/yaku/one_han/yaku_1_han.dart';

class Yakuhai extends Yaku1Han {
  Yakuhai(
      {required id, required name, required enabledShareYakus, required sortId})
      : super(
            id: id,
            name: name,
            enabledNaki: true,
            enabledShareYakus: enabledShareYakus,
            sortId: sortId);
}
