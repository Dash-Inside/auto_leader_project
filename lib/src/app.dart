import 'package:auto_leader_project/src/presentation/content/about_us_view.dart';
import 'package:auto_leader_project/src/presentation/content/navigation_bar_view.dart';
import 'package:auto_leader_project/src/presentation/pages/home_page.dart';
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
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(255, 51, 51, 1),
          onBackground: Color.fromRGBO(35, 44, 51, 1),
        ),
      ),
      home: const HomePage(),
    );
  }
}
