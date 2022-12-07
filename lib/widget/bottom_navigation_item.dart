// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Function onClick;
  const BottomNavigationItem({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        padding: const EdgeInsets.all(
          8.0,
        ),
        height: 40,
        decoration: !isSelected ? null : BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.white12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white38 : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
