import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class DaiSanGen extends Yakuman {
  DaiSanGen()
      : super(
          id: YakuId.daisangen,
          name: '大三元',
          enabledNaki: true,
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.tsuiso, //字一色
            YakuId.suanko, //四暗刻
            YakuId.suankoTanki, //四暗刻単騎
            YakuId.sukantsu, //四槓子
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 34,
        );
}
