import 'package:flutter/material.dart';

/// Buttons for selecting selection
class CustomToggleButton extends StatelessWidget {
  /// Returns an instance of [CustomToggleButton].
  const CustomToggleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Defolt state buttons
    List<bool> _listBool = [true, false];

    return ToggleButtons(
      renderBorder: false,
      splashColor: Colors.transparent,
      fillColor: Colors.transparent,
      disabledBorderColor: Colors.transparent,
      isSelected: _listBool,
      onPressed: (index) {
        if (index == 0) {
          _listBool[0] = true;
          _listBool[1] = false;
        } else {
          _listBool[0] = false;
          _listBool[1] = true;
        }
      },
      children: const [
        SelectButton(text: 'О нас'),
        SelectButton(text: 'Курс доллара'),
      ],
    );
  }
}

/// Custom button for selection
class SelectButton extends StatelessWidget {
  /// Data inside the button
  final String text;

  /// Returns an instance of [SelectButton]
  const SelectButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Color onBackground = Theme.of(context).colorScheme.onBackground;
    final TextStyle bodySmall = Theme.of(context).textTheme.bodySmall!;
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
      ),
      child: Text(
        text,
        style: bodySmall.copyWith(color: onBackground),
      ),
    );
  }
}
