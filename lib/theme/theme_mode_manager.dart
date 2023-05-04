import 'package:flutter/material.dart';

class ThemeModeManager extends StatefulWidget {
  final Widget Function(ThemeMode themeMode) builder;
  final ThemeMode defaultThemeMode;

  const ThemeModeManager({Key? key, required this.builder, required this.defaultThemeMode})
      : super(key: key);

  @override
  _ThemeModeManagerState createState() =>
      _ThemeModeManagerState(themeMode: defaultThemeMode);

  static _ThemeModeManagerState? of(BuildContext context) {
    return context.findAncestorStateOfType<_ThemeModeManagerState>();
  }
}

class _ThemeModeManagerState extends State<ThemeModeManager> {
  ThemeMode _themeMode;

  _ThemeModeManagerState({required ThemeMode themeMode}) : _themeMode = themeMode;

  set themeMode(ThemeMode mode) {
    if (_themeMode != mode) {
      setState(() {
        _themeMode = mode;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return widget.builder(_themeMode);
  }
}