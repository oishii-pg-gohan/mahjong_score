import 'package:mahjong_score/data/yaku/yaku.dart';

class Yaku3Han extends Yaku {
  Yaku3Han(
      {required id,
      required name,
      hanNaki,
      enabledNaki,
      enabledShareYakus,
      required sortId})
      : super(
          id: id,
          name: name,
          han: 3,
          hanNaki: hanNaki ?? 0,
          okNaki: enabledNaki ?? false,
          enabledShareYakus: enabledShareYakus ?? [],
          sortId: sortId,
        );
}
