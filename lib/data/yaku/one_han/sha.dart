import 'package:mahjong_score/data/yaku/one_han/yakuhai_bakaze.dart';
import 'package:mahjong_score/data/yaku/yaku.dart';

class Sha extends YakuhaiBakaze {
  Sha()
      : super(
          id: YakuId.sha,
          name: '西',
          enabledShareYakus: [
            // 1翻
            YakuId.reach, // 立直
            YakuId.ippatsu, // 一発
            YakuId.tsumo, // 門前自摸
            YakuId.ipeiko, // 一盃口
            YakuId.tonBa, // 東（場）
            YakuId.nanBa, // 南（場）
            YakuId.haku, // 白
            YakuId.hatsu, // 發
            YakuId.chun, // 中
            YakuId.chankan, // 槍槓
            YakuId.rinshankaiho, // 嶺上開花
            YakuId.haitei, // 海底
            YakuId.hotei, // 河底
            // 2翻
            YakuId.wreach, // ダブルリーチ
            YakuId.toitoiho, // 対々和
            YakuId.sananko, // 三暗刻
            YakuId.sanshokudojun, // 三色同順
            YakuId.sanshokudoko, // 三色同刻
            YakuId.ikkitsukan, // 一気通貫
            YakuId.chanta, // チャンタ
            YakuId.honroto, //混老頭
            YakuId.shosangen, // 小三元
            YakuId.sankantsu, // 三槓子
            // 3翻
            YakuId.honitsu, // 混一色
            // 6翻
            // 役満
          ],
          sortId: 10,
        );
}
