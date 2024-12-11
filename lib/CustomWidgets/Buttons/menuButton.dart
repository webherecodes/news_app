import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print(value); // Handle menu selection
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: 'Option 1',
            child: Text('Option 1'),
          ),
          PopupMenuItem(
            value: 'Option 2',
            child: Text('Option 2'),
          ),
          PopupMenuItem(
            value: 'Option 3',
            child: Text('Option 3'),
          ),
        ];
      },
    );
  }
}
