import 'package:mahjong_score/data/finish/finish_ko.dart';
import 'package:mahjong_score/data/finish/finish_oya.dart';

enum FinishId {
  // 平和
  han1Pinfu,
  han2Pinfu,
  han3Pinfu,
  han4Pinfu,
  // 七対子
  han2Chitoitsu,
  han3Chitoitsu,
  han4Chitoitsu,
  // 1翻
  han1fu30,
  han1fu40,
  han1fu50,
  han1fu60,
  han1fu70,
  han1fu80,
  han1fu90,
  han1fu100,
  han1fu110,
  // 2翻
  han2fu30,
  han2fu40,
  han2fu50,
  han2fu60,
  han2fu70,
  han2fu80,
  han2fu90,
  han2fu100,
  han2fu110,
  // 3翻
  han3fu30,
  han3fu40,
  han3fu50,
  han3fu60,
  // 4翻
  han4fu30,
  // 満貫以上
  mangan,
  haneman,
  baiman,
  sanbaiman,
  yakuman,
  // 異常系
  unknonw
}

Map<FinishId, FinishOya> mapFinishOya = {
  // 平和
  FinishId.han1Pinfu: FinishOya(scoreRon: 1500, scoreAll: 0),
  FinishId.han2Pinfu: FinishOya(scoreRon: 2900, scoreAll: 700),
  FinishId.han3Pinfu: FinishOya(scoreRon: 5800, scoreAll: 1300),
  FinishId.han4Pinfu: FinishOya(scoreRon: 12000, scoreAll: 2600),
  // // 七対子
  FinishId.han2Chitoitsu: FinishOya(scoreRon: 2400, scoreAll: 0),
  FinishId.han3Chitoitsu: FinishOya(scoreRon: 4800, scoreAll: 1600),
  FinishId.han4Chitoitsu: FinishOya(scoreRon: 9600, scoreAll: 3200),
  // // 1翻
  FinishId.han1fu30: FinishOya(scoreRon: 1500, scoreAll: 500),
  FinishId.han1fu40: FinishOya(scoreRon: 2000, scoreAll: 700),
  FinishId.han1fu50: FinishOya(scoreRon: 2400, scoreAll: 800),
  FinishId.han1fu60: FinishOya(scoreRon: 2900, scoreAll: 1000),
  FinishId.han1fu70: FinishOya(scoreRon: 3400, scoreAll: 1200),
  FinishId.han1fu80: FinishOya(scoreRon: 3900, scoreAll: 1300),
  FinishId.han1fu90: FinishOya(scoreRon: 4400, scoreAll: 1500),
  FinishId.han1fu100: FinishOya(scoreRon: 4800, scoreAll: 1600),
  FinishId.han1fu110: FinishOya(scoreRon: 5300, scoreAll: 1800),
  // // 2翻
  FinishId.han2fu30: FinishOya(scoreRon: 2900, scoreAll: 1000),
  FinishId.han2fu40: FinishOya(scoreRon: 3900, scoreAll: 1300),
  FinishId.han2fu50: FinishOya(scoreRon: 4800, scoreAll: 1600),
  FinishId.han2fu60: FinishOya(scoreRon: 5800, scoreAll: 2000),
  FinishId.han2fu70: FinishOya(scoreRon: 6800, scoreAll: 2300),
  FinishId.han2fu80: FinishOya(scoreRon: 7700, scoreAll: 2600),
  FinishId.han2fu90: FinishOya(scoreRon: 8700, scoreAll: 2900),
  FinishId.han2fu100: FinishOya(scoreRon: 9600, scoreAll: 3200),
  FinishId.han2fu110: FinishOya(scoreRon: 10600, scoreAll: 3600),
  // // 3翻
  FinishId.han3fu30: FinishOya(scoreRon: 5800, scoreAll: 2000),
  FinishId.han3fu40: FinishOya(scoreRon: 7700, scoreAll: 2600),
  FinishId.han3fu50: FinishOya(scoreRon: 9600, scoreAll: 3200),
  FinishId.han3fu60: FinishOya(scoreRon: 12000, scoreAll: 4000),
  // // 4翻
  FinishId.han4fu30: FinishOya(scoreRon: 12000, scoreAll: 4000),
  // // 満貫以上
  FinishId.mangan: FinishOya(scoreRon: 12000, scoreAll: 4000),
  FinishId.haneman: FinishOya(scoreRon: 18000, scoreAll: 6000),
  FinishId.baiman: FinishOya(scoreRon: 24000, scoreAll: 8000),
  FinishId.sanbaiman: FinishOya(scoreRon: 36000, scoreAll: 12000),
  FinishId.yakuman: FinishOya(scoreRon: 48000, scoreAll: 16000),
};

Map<FinishId, FinishKo> mapFinishKo = {
  // 平和
  FinishId.han1Pinfu: FinishKo(
    scoreRon: 1000,
    scoreFromKo: 0,
    scoreFromOya: 0,
  ),
  FinishId.han2Pinfu: FinishKo(
    scoreRon: 2000,
    scoreFromKo: 400,
    scoreFromOya: 700,
  ),
  FinishId.han3Pinfu: FinishKo(
    scoreRon: 3900,
    scoreFromKo: 700,
    scoreFromOya: 1300,
  ),
  FinishId.han4Pinfu: FinishKo(
    scoreRon: 8000,
    scoreFromKo: 1300,
    scoreFromOya: 2600,
  ),
  // // 七対子
  FinishId.han2Chitoitsu: FinishKo(
    scoreRon: 1600,
    scoreFromKo: 0,
    scoreFromOya: 0,
  ),
  FinishId.han3Chitoitsu: FinishKo(
    scoreRon: 3200,
    scoreFromKo: 800,
    scoreFromOya: 1600,
  ),
  FinishId.han4Chitoitsu: FinishKo(
    scoreRon: 6400,
    scoreFromKo: 1600,
    scoreFromOya: 3200,
  ),
  // // 1翻
  FinishId.han1fu30: FinishKo(
    scoreRon: 1000,
    scoreFromKo: 300,
    scoreFromOya: 500,
  ),
  FinishId.han1fu40: FinishKo(
    scoreRon: 1300,
    scoreFromKo: 400,
    scoreFromOya: 700,
  ),
  FinishId.han1fu50: FinishKo(
    scoreRon: 1600,
    scoreFromKo: 400,
    scoreFromOya: 800,
  ),
  FinishId.han1fu60: FinishKo(
    scoreRon: 2000,
    scoreFromKo: 500,
    scoreFromOya: 1000,
  ),
  FinishId.han1fu70: FinishKo(
    scoreRon: 2300,
    scoreFromKo: 600,
    scoreFromOya: 1200,
  ),
  FinishId.han1fu80: FinishKo(
    scoreRon: 2600,
    scoreFromKo: 700,
    scoreFromOya: 1300,
  ),
  FinishId.han1fu90: FinishKo(
    scoreRon: 2900,
    scoreFromKo: 800,
    scoreFromOya: 1500,
  ),
  FinishId.han1fu100: FinishKo(
    scoreRon: 3200,
    scoreFromKo: 800,
    scoreFromOya: 1600,
  ),
  FinishId.han1fu110: FinishKo(
    scoreRon: 3600,
    scoreFromKo: 900,
    scoreFromOya: 1800,
  ),
  // // 2翻
  FinishId.han2fu30: FinishKo(
    scoreRon: 2000,
    scoreFromKo: 500,
    scoreFromOya: 1000,
  ),
  FinishId.han2fu40: FinishKo(
    scoreRon: 2600,
    scoreFromKo: 700,
    scoreFromOya: 1300,
  ),
  FinishId.han2fu50: FinishKo(
    scoreRon: 3200,
    scoreFromKo: 800,
    scoreFromOya: 1600,
  ),
  FinishId.han2fu60: FinishKo(
    scoreRon: 3900,
    scoreFromKo: 1000,
    scoreFromOya: 2000,
  ),
  FinishId.han2fu70: FinishKo(
    scoreRon: 4500,
    scoreFromKo: 1200,
    scoreFromOya: 2300,
  ),
  FinishId.han2fu80: FinishKo(
    scoreRon: 5200,
    scoreFromKo: 1300,
    scoreFromOya: 2600,
  ),
  FinishId.han2fu90: FinishKo(
    scoreRon: 5800,
    scoreFromKo: 1500,
    scoreFromOya: 2900,
  ),
  FinishId.han2fu100: FinishKo(
    scoreRon: 6400,
    scoreFromKo: 1600,
    scoreFromOya: 3200,
  ),
  FinishId.han2fu110: FinishKo(
    scoreRon: 7100,
    scoreFromKo: 1800,
    scoreFromOya: 3600,
  ),
  // // 3翻
  FinishId.han3fu30: FinishKo(
    scoreRon: 3900,
    scoreFromKo: 1000,
    scoreFromOya: 2000,
  ),
  FinishId.han3fu40: FinishKo(
    scoreRon: 5200,
    scoreFromKo: 1300,
    scoreFromOya: 2600,
  ),
  FinishId.han3fu50: FinishKo(
    scoreRon: 6400,
    scoreFromKo: 1600,
    scoreFromOya: 3200,
  ),
  FinishId.han3fu60: FinishKo(
    scoreRon: 8000,
    scoreFromKo: 2000,
    scoreFromOya: 4000,
  ),
  // // 4翻
  FinishId.han4fu30: FinishKo(
    scoreRon: 8000,
    scoreFromKo: 2000,
    scoreFromOya: 4000,
  ),
  // // 満貫以上
  FinishId.mangan: FinishKo(
    scoreRon: 8000,
    scoreFromKo: 2000,
    scoreFromOya: 4000,
  ),
  FinishId.haneman: FinishKo(
    scoreRon: 12000,
    scoreFromKo: 3000,
    scoreFromOya: 6000,
  ),
  FinishId.baiman: FinishKo(
    scoreRon: 16000,
    scoreFromKo: 4000,
    scoreFromOya: 8000,
  ),
  FinishId.sanbaiman: FinishKo(
    scoreRon: 24000,
    scoreFromKo: 6000,
    scoreFromOya: 12000,
  ),
  FinishId.yakuman: FinishKo(
    scoreRon: 32000,
    scoreFromKo: 8000,
    scoreFromOya: 16000,
  ),
};
