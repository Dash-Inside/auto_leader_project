import 'package:flutter/material.dart';

///
class FabWidget extends StatefulWidget {
  ///
  const FabWidget({
    this.onOpenPressed,
    super.key,
  });

  ///
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool isOpen)? onOpenPressed;

  @override
  State<FabWidget> createState() => _FabWidgetState();
}

class _FabWidgetState extends State<FabWidget> {
  static const Duration _duration = Duration(milliseconds: 155);
  static const Size _iconSize = Size.square(62.0);

  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _iconSize.width,
      height: _iconSize.height * 3 + 16.0 * 2,
      child: Stack(
        children: [
          AnimatedAlign(
            duration: _duration,
            alignment: isOpen ? Alignment.topCenter : Alignment.bottomCenter,
            child: AnimatedOpacity(
              duration: _duration,
              opacity: isOpen ? 1.0 : 0.0,
              child: Container(
                width: _iconSize.width,
                height: _iconSize.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(_iconSize.width)),
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.abc,
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            duration: _duration,
            opacity: isOpen ? 1.0 : 0.0,
            child: AnimatedAlign(
              duration: _duration,
              alignment: isOpen ? Alignment.center : Alignment.bottomCenter,
              child: Container(
                width: _iconSize.width,
                height: _iconSize.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(_iconSize.width)),
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.abc,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });

              widget.onOpenPressed?.call(isOpen);
            },
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: _iconSize.width,
                height: _iconSize.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(_iconSize.width)),
                  color: Colors.red,
                ),
                child: const Icon(
                  Icons.abc,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
