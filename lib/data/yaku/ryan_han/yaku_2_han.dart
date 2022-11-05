import 'package:mahjong_score/data/yaku/yaku.dart';

class Yaku2Han extends Yaku {
  Yaku2Han(
      {required id,
      required name,
      hanNaki,
      enabledNaki,
      enabledShareYakus,
      required sortId})
      : super(
          id: id,
          name: name,
          han: 2,
          hanNaki: hanNaki ?? 0,
          okNaki: enabledNaki ?? false,
          enabledShareYakus: enabledShareYakus ?? [],
          sortId: sortId,
        );
}
