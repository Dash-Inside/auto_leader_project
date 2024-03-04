import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatelessWidget {
  static const List<bool> listBool = [true, false];
  const ToggleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: listBool,
      children: const [
        Text('data'),
      ],
    );
  }
}
