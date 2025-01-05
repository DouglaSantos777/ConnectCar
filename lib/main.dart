import 'package:connectcar/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:connectcar/screens/principal_screen.dart';
import 'package:connectcar/theme/theme_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('settings');

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.watch(themeProvider);

    return MaterialApp(
      title: 'ConnectCar',
      debugShowCheckedModeBanner: false,
      theme: CustomThemeData().buildThemeData(appTheme),
      home: const PrincipalScreen(),
    );
  }
}
