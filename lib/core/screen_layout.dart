// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'screen_layout.freezed.dart';

@freezed
class ScreenType with _$ScreenType {
  const factory ScreenType.mobile() = MobileScreenType;
  const factory ScreenType.laptop() = LaptopScreenType;
  const factory ScreenType.desktop() = DesktopScreenType;
}

class ScreenLayout extends StatelessWidget {
  const ScreenLayout({
    required this.desktop,
    this.mobile,
    this.laptop,
    super.key,
  });

  final Widget Function(BuildContext context)? mobile;
  final Widget Function(BuildContext context)? laptop;
  final Widget Function(BuildContext context) desktop;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    late final ScreenType type;

    if (size.width < 600 && mobile != null) {
      type = const ScreenType.mobile();
    } else if (size.width < 1200 && laptop == null) {
      type = const ScreenType.mobile();
    } else if (size.width < 1200 && laptop != null) {
      type = const ScreenType.laptop();
    } else {
      type = const ScreenType.desktop();
    }

    return type.map(
      mobile: (_) => mobile?.call(context) ?? const Placeholder(),
      laptop: (_) => laptop?.call(context) ?? const Placeholder(),
      desktop: (_) => desktop.call(context),
    );
  }
}

class SelectedScreenLayout extends StatelessWidget {
  const SelectedScreenLayout({
    required this.type,
    required this.builder,
    super.key,
  });

  final ScreenType type;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    late final ScreenType local;

    if (size.width < 600) {
      local = const ScreenType.mobile();
    } else if (size.width < 1200) {
      local = const ScreenType.laptop();
    } else {
      local = const ScreenType.desktop();
    }

    if (type == local) {
      return builder.call(context);
    }

    return const SizedBox.shrink();
  }
}

class MultiSelectedScreenLayout extends StatelessWidget {
  const MultiSelectedScreenLayout({
    required this.type,
    required this.builder,
    super.key,
  });

  final List<ScreenType> type;
  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    late final ScreenType local;

    if (size.width < 600) {
      local = const ScreenType.mobile();
    } else if (size.width < 1200) {
      local = const ScreenType.laptop();
    } else {
      local = const ScreenType.desktop();
    }

    if (type.contains(local)) {
      return builder.call(context);
    }

    return const SizedBox.shrink();
  }
}
