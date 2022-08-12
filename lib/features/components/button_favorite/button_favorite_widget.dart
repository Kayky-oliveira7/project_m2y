import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonFavoriteWidget extends StatefulWidget {
  const ButtonFavoriteWidget({super.key});

  @override
  State<ButtonFavoriteWidget> createState() => _ButtonFavoriteWidgetState();
}

class _ButtonFavoriteWidgetState extends State<ButtonFavoriteWidget> {
  bool _isButtonDisabled = true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      disabledColor: Colors.red,
      color: Colors.white,
      onPressed: _isButtonDisabled
          ? () {
              setState(() => _isButtonDisabled = false);
            }
          : null,
      icon: const Icon(
        Icons.favorite,
        size: 40,
      ),
    );
  }
}
