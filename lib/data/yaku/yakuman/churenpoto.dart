import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Churenpoto extends Yakuman {
  Churenpoto()
      : super(
          id: YakuId.churenpoto,
          name: '九蓮宝燈',
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 42,
        );
}
