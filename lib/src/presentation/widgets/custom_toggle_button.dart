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
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 6),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(36.0),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
