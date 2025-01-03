import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

const themeKey = 'app_theme';

enum AppTheme { light, dark }

final themeProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme.light) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final box = await Hive.openBox('settings');
    final themeString = box.get(themeKey, defaultValue: 'light');

    if (themeString == 'dark') {
      state = AppTheme.dark;
    } else {
      state = AppTheme.light;
    }
  }

  Future<void> toggleTheme() async {
    final newTheme = state == AppTheme.light ? AppTheme.dark : AppTheme.light;
    state = newTheme;

    final box = await Hive.openBox('settings');
    box.put(themeKey, newTheme == AppTheme.dark ? 'dark' : 'light');
  }
}
