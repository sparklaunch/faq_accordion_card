import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccordionItem extends StatelessWidget {
  final String title;
  final bool isOpen;
  const AccordionItem({super.key, required this.title, this.isOpen = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: const Color.fromRGBO(30, 30, 41, 1),
                fontWeight: isOpen ? FontWeight.bold : FontWeight.normal),
          ),
          Transform.flip(
            flipY: isOpen,
            child: SvgPicture.asset("assets/images/ArrowDown.svg"),
          ),
        ],
      ),
    );
  }
}
