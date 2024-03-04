import 'package:flutter/material.dart';

/// Sections nav panel.
class NavigationBarView extends StatelessWidget {
  /// Returns an instance of [NavigationBarView].
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'АвтоЛидер',
        ),
      ],
    );
  }
}
