import 'package:mahjong_score/data/yaku/yaku.dart';

class Yakuman extends Yaku {
  Yakuman(
      {required id,
      required name,
      enabledNaki,
      enabledShareYakus,
      required sortId})
      : super(
          id: id,
          name: name,
          han: 0,
          hanNaki: 0,
          okNaki: enabledNaki ?? false,
          enabledShareYakus: enabledShareYakus ?? [],
          sortId: sortId,
        );
}
