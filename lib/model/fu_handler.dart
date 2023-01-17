import 'package:mahjong_score/data/fu/fus.dart';

int getFu(
  bool hasPinfu,
  bool hasChitoitsu,
  bool menzen,
  bool tsumo,
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
  FuAtama atama,
  FuMachi machi,
) {
  if (hasPinfu) {
    return 20;
  } else if (hasChitoitsu) {
    return 25;
  } else {
    return _getFu(
        menzen, tsumo, mentsu1, mentsu2, mentsu3, mentsu4, atama, machi);
  }
}

int _getFu(
  bool menzen,
  bool tsumo,
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
  FuAtama atama,
  FuMachi machi,
) {
  // 基本符
  int fuKihon = getFuKihon(menzen, tsumo);

  // 面子符
  int fuMentsu = getFuMentsu(mentsu1, mentsu2, mentsu3, mentsu4);

  // アタマ符
  int fuAtama = mapFuAtama[atama]!;

  // 待ち符
  int fuMachi = mapFuMachi[machi]!;

  int fuTsumo = tsumo ? 2 : 0;

  int sum = fuKihon + fuMentsu + fuAtama + fuMachi + fuTsumo;
  return calcFu(sum);
}

int getFuKihon(bool menzen, bool tsumo) {
  int fu = 20;
  if (menzen && !tsumo) {
    fu = 30;
  }
  return fu;
}

int getFuMentsu(
  FuMentsu mentsu1,
  FuMentsu mentsu2,
  FuMentsu mentsu3,
  FuMentsu mentsu4,
) {
  int fu1 = mapFuMentsu[mentsu1]!;
  int fu2 = mapFuMentsu[mentsu2]!;
  int fu3 = mapFuMentsu[mentsu3]!;
  int fu4 = mapFuMentsu[mentsu4]!;
  return fu1 + fu2 + fu3 + fu4;
}

int calcFu(int fu) {
  return (fu / 10).ceil() * 10;
}
