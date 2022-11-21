import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';

const FuMentsu initialMentsu3 = FuMentsu.none;

final mentsu3Provider = StateProvider<FuMentsu>((ref) => initialMentsu3);
