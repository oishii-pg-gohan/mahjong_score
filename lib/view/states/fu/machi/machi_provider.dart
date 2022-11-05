import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mahjong_score/data/fu/fus.dart';

const FuMachi initialFuMachi = FuMachi.ryanmen;

final machiProvider = StateProvider<FuMachi>((ref) => initialFuMachi);
