import 'package:auto_leader_project/src/presentation/content/about_us_view.dart';
import 'package:auto_leader_project/src/presentation/content/navigation_bar_view.dart';
import 'package:auto_leader_project/src/presentation/content/promotions_view.dart';
import 'package:auto_leader_project/src/presentation/content/tarrifs_view.dart';
import 'package:flutter/material.dart';

/// Application home page.
class HomePage extends StatelessWidget {
  /// Returns an instance of [HomePage].
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _SectionSliver(const NavigationBarView()),
          _SectionSliver(const AboutUsView()),
          _SectionSliver(const TarrifsView()),
          _SectionSliver(const PromotionsView()),
        ],
      ),
    );
  }
}

class _SectionSliver extends SliverPadding {
  _SectionSliver(Widget widget)
      : super(
          padding: const EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          sliver: SliverToBoxAdapter(
            child: widget,
          ),
        );

  static const double horizontalPadding = 64.0;
  static const double verticalPadding = 32.0;
}
