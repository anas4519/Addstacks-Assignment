import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile(
      {super.key,
      required this.title,
      required this.icon,
      required this.isSelected});
  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: widget.isSelected ? Colors.grey[200] : Colors.white,
        borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20), bottomStart: Radius.circular(20)),
      ),
      child: Center(
          child: Row(
        children: [
          SizedBox(
            width: 48,
          ),
          Icon(
            widget.icon,
            color: widget.isSelected ? Colors.black : Colors.grey,
          ),
          SizedBox(width: 16),
          Text(
            widget.title,
            style: TextStyle(
                color: widget.isSelected ? Colors.black : Colors.grey[800],
                fontWeight:
                    widget.isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: 18),
          ),
        ],
      )),
    );
  }
}
