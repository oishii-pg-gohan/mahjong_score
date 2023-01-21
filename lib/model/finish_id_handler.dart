import 'package:mahjong_score/data/finish/finishs.dart';
import 'package:mahjong_score/data/fu/fus.dart';

FinishId getFinishId(int han, FuId fu, bool hasPinfu, bool hasChitoitsu) {
  FinishId id;
  if (hasPinfu) {
    id = _getFinishIdWhenPinfu(han);
  } else if (hasChitoitsu) {
    id = _getFinishIdWhenChitoitsu(han);
  } else {
    FuId calcFu = fu;
    if (fu == FuId.fu20) {
      // 喰いタンの場合は30符として計算する。（平和ではないのに20符なのは喰いタン）
      calcFu = FuId.fu30;
    }
    switch (han) {
      case 0:
        id = FinishId.unknonw;
        break;
      case 1:
        id = _getFinishIdWhenHan1(calcFu);
        break;
      case 2:
        id = _getFinishIdWhenHan2(calcFu);
        break;
      case 3:
        id = _getFinishIdWhenHan3(calcFu);
        break;
      case 4:
        id = _getFinishIdWhenHan4(calcFu);
        break;
      default:
        id = _getFinishIdMoreManagan(han);
    }
  }

  return id;
}

FinishId _getFinishIdWhenPinfu(int han) {
  switch (han) {
    case 0:
      return FinishId.unknonw;
    case 1:
      return FinishId.han1Pinfu;
    case 2:
      return FinishId.han2Pinfu;
    case 3:
      return FinishId.han3Pinfu;
    case 4:
      return FinishId.han4Pinfu;
    default:
      return _getFinishIdMoreManagan(han);
  }
}

FinishId _getFinishIdWhenChitoitsu(int han) {
  switch (han) {
    case 0:
    case 1:
      return FinishId.unknonw;
    case 2:
      return FinishId.han2Chitoitsu;
    case 3:
      return FinishId.han3Chitoitsu;
    case 4:
      return FinishId.han4Chitoitsu;
    default:
      return _getFinishIdMoreManagan(han);
  }
}

FinishId _getFinishIdWhenHan1(FuId fu) {
  switch (fu) {
    case FuId.fu30:
      return FinishId.han1fu30;
    case FuId.fu40:
      return FinishId.han1fu40;
    case FuId.fu50:
      return FinishId.han1fu50;
    case FuId.fu60:
      return FinishId.han1fu60;
    case FuId.fu70:
      return FinishId.han1fu70;
    case FuId.fu80:
      return FinishId.han1fu80;
    case FuId.fu90:
      return FinishId.han1fu90;
    case FuId.fu100:
      return FinishId.han1fu100;
    case FuId.fu110:
    case FuId.fu120:
    case FuId.fu130:
    case FuId.fu140:
    case FuId.fu150:
    case FuId.fu160:
      return FinishId.han1fu110;
    default:
      return FinishId.unknonw;
  }
}

FinishId _getFinishIdWhenHan2(FuId fu) {
  switch (fu) {
    case FuId.fu30:
      return FinishId.han2fu30;
    case FuId.fu40:
      return FinishId.han2fu40;
    case FuId.fu50:
      return FinishId.han2fu50;
    case FuId.fu60:
      return FinishId.han2fu60;
    case FuId.fu70:
      return FinishId.han2fu70;
    case FuId.fu80:
      return FinishId.han2fu80;
    case FuId.fu90:
      return FinishId.han2fu90;
    case FuId.fu100:
      return FinishId.han2fu100;
    case FuId.fu110:
    case FuId.fu120:
    case FuId.fu130:
    case FuId.fu140:
    case FuId.fu150:
    case FuId.fu160:
      return FinishId.han2fu110;
    default:
      return FinishId.unknonw;
  }
}

FinishId _getFinishIdWhenHan3(FuId fu) {
  switch (fu) {
    case FuId.fu30:
      return FinishId.han3fu30;
    case FuId.fu40:
      return FinishId.han3fu40;
    case FuId.fu50:
      return FinishId.han3fu50;
    case FuId.fu60:
      return FinishId.han3fu60;
    case FuId.fu70:
    case FuId.fu80:
    case FuId.fu90:
    case FuId.fu100:
    case FuId.fu110:
    case FuId.fu120:
    case FuId.fu130:
    case FuId.fu140:
    case FuId.fu150:
    case FuId.fu160:
      return FinishId.mangan;
    default:
      return FinishId.unknonw;
  }
}

FinishId _getFinishIdWhenHan4(FuId fu) {
  switch (fu) {
    case FuId.fu30:
      return FinishId.han4fu30;
    case FuId.fu40:
    case FuId.fu50:
    case FuId.fu60:
    case FuId.fu70:
    case FuId.fu80:
    case FuId.fu90:
    case FuId.fu100:
    case FuId.fu110:
    case FuId.fu120:
    case FuId.fu130:
    case FuId.fu140:
    case FuId.fu150:
    case FuId.fu160:
      return FinishId.mangan;
    default:
      return FinishId.unknonw;
  }
}

FinishId _getFinishIdMoreManagan(int han) {
  switch (han) {
    case 1:
    case 2:
    case 3:
      return FinishId.unknonw;
    case 4:
    case 5:
      return FinishId.mangan;
    case 6:
    case 7:
      return FinishId.haneman;
    case 8:
    case 9:
    case 10:
      return FinishId.baiman;
    case 11:
    case 12:
      return FinishId.sanbaiman;
    default:
      return FinishId.yakuman;
  }
}
