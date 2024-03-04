import 'package:auto_leader_project/src/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

/// Main application of the site.
class App extends StatelessWidget {
  /// Returns an instance of [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Автошкола АвтоЛидер',
      home: HomePage(),
    );
  }
}
