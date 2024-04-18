import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musicplayer/features/home/data/source/home_source.dart';

final apiProvider = Provider<Apiservices>((ref) {
  return Apiservices();
});
final getmusicProvider = FutureProvider((ref) async {
  return ref.watch(apiProvider).getmusic();
});
