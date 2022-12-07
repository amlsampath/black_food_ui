// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextBgBox extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onClick;
  final Color bgColor;
  const TextBgBox({
    Key? key,
    required this.title,
    required this.isSelected,
    required this.onClick,
    this.bgColor = Colors.white12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        padding: EdgeInsets.all(
          10.0,
        ),
        decoration: BoxDecoration(
            color: !isSelected ? Colors.transparent : bgColor,
            borderRadius: BorderRadius.circular(
              10.0,
            )),
        child: Text(
          title,
          style: TextStyle(
            color: !isSelected ? Colors.white30 : Colors.white,
          ),
        ),
      ),
    );
  }
}
