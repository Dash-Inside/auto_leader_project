import 'package:auto_leader_project/src/presentation/content/about_us_view.dart';
import 'package:auto_leader_project/src/presentation/content/navigation_bar_view.dart';
import 'package:auto_leader_project/src/presentation/content/promotions_view.dart';
import 'package:auto_leader_project/src/presentation/content/tarrifs_view.dart';
import 'package:auto_leader_project/src/presentation/style/color_style.dart';
import 'package:flutter/material.dart';

/// Application home page.
class HomePage extends StatelessWidget {
  /// Returns an instance of [HomePage].
  const HomePage({super.key});

  static const double _appBarHorizontalPadding = 48.0;
  static const double _expandedAppBarHeight = 88.0;
  static const double _appBarTopPadding = 8.0;
  static const int _appBarShadowAlphaVal = 52;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: getBackgroundColor(context),
            foregroundColor: getBackgroundColor(context),
            surfaceTintColor: getBackgroundColor(context),
            shadowColor: getOnBackgroundColor(context).withAlpha(
              _appBarShadowAlphaVal,
            ),
            pinned: true,
            floating: true,
            expandedHeight: _expandedAppBarHeight,
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                top: _appBarTopPadding,
              ),
              title: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: _appBarHorizontalPadding,
                ),
                child: NavigationBarView(),
              ),
              expandedTitleScale: 1.0,
            ),
          ),
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
