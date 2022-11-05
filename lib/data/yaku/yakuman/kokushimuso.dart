import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Kokushimuso extends Yakuman {
  Kokushimuso()
      : super(
          id: YakuId.kokushimuso,
          name: '国士無双',
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 43,
        );
}
