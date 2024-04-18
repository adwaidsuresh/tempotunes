import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musicplayer/core/theme/theme.dart';
import 'package:musicplayer/features/login/presentations/page/GetstarterPage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ref.watch(appThemeProvider),
        debugShowCheckedModeBanner: false,
        home: const GetstarterPage());
  }
}
