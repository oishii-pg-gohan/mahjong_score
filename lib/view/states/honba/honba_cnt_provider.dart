import 'package:hooks_riverpod/hooks_riverpod.dart';

const int initialHonba = 0;

final honbaCntProvider = StateProvider<int>((ref) => initialHonba);
