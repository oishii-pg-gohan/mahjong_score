import 'package:mahjong_score/data/yaku/yaku.dart';

class Yaku1Han extends Yaku {
  Yaku1Han({
    required id,
    required name,
    enabledNaki,
    enabledShareYakus,
    required sortId,
  }) : super(
          id: id,
          name: name,
          han: 1,
          hanNaki: 1,
          okNaki: enabledNaki ?? false,
          enabledShareYakus: enabledShareYakus ?? [],
          sortId: sortId,
        );
}
