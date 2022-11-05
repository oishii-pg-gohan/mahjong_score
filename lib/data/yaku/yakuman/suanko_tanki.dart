import 'package:mahjong_score/data/yaku/yaku.dart';
import 'package:mahjong_score/data/yaku/yakuman/yakuman.dart';

class SuankoTanki extends Yakuman {
  SuankoTanki()
      : super(
          id: YakuId.suankoTanki,
          name: '四暗刻単騎',
          enabledShareYakus: [
            // 1翻
            // 2翻
            // 3翻
            // 6翻
            // 役満
            YakuId.daisangen, //大三元
            YakuId.daisushi, // 大四喜
            YakuId.shosushi, //小四喜
            YakuId.tsuiso, //字一色
            YakuId.ryuiso, //緑一色
            YakuId.chinroto, //清老頭
            YakuId.tenho, // 天和
            YakuId.chiho, // 地和
          ],
          sortId: 39,
        );
}
