import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';

const FuMentsu initialMentsu1 = FuMentsu.none;

final mentsu1Provider = StateProvider<FuMentsu>((ref) => initialMentsu1);
