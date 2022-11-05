import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class Chinroto extends Yakuman {
  Chinroto()
      : super(
          id: YakuId.chinroto,
          name: '清老頭',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.suanko, //四暗刻
            YakuId.sukantsu, //四槓子
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 41,
        );
}
