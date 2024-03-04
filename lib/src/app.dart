import 'package:auto_leader_project/src/presentation/content/about_us_view.dart';
import 'package:auto_leader_project/src/presentation/content/navigation_bar_view.dart';
import 'package:flutter/material.dart';

/// Main application of the site.
class App extends StatelessWidget {
  /// Returns an instance of [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Автошкола АвтоЛидер',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            fontFamily: 'Nunito',
          ),
          bodyMedium: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Nunito',
          ),
          displayMedium: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Nunito',
          ),
          bodySmall: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Nunito',
          ),
          titleSmall: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Nunito',
          ),
        ),
        colorScheme: const ColorScheme.light(
          background: Color.fromRGBO(255, 255, 255, 1),
          primary: Color.fromRGBO(255, 51, 51, 1),
          onBackground: Color.fromRGBO(35, 44, 51, 1),
        ),
      ),
      home: const AboutUsView(),
    );
  }
}
