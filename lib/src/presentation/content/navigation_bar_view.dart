import 'package:auto_leader_project/src/presentation/widgets/toggle_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Sections nav panel.
class NavigationBarView extends StatelessWidget {
  /// Returns an instance of [NavigationBarView].
  const NavigationBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/logo.svg',
            height: 48.0,
            width: 48.0,
          ),
          Text(
            'АвтоЛидер',
          ),
          ToggleButtonWidget()
        ],
      ),
    );
  }
}
