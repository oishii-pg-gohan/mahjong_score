import 'package:hooks_riverpod/hooks_riverpod.dart';

const int initialDora = 0;

final doraCntProvider = StateProvider<int>((ref) => initialDora);
