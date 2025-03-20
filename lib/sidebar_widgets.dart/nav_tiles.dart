import 'package:adstacks_assignment/sidebar_widgets.dart/tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavTiles extends StatefulWidget {
  const NavTiles({super.key});

  @override
  State<NavTiles> createState() => _NavTilesState();
}

class _NavTilesState extends State<NavTiles> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        InkWell(
            onTap: () {
              if (_selectedIndex != 0) {
                setState(() {
                  _selectedIndex = 0;
                });
              }
            },
            child: Tile(
                title: 'Home',
                icon: Icons.home_filled,
                isSelected: _selectedIndex == 0)),
        InkWell(
            onTap: () {
              if (_selectedIndex != 1) {
                setState(() {
                  _selectedIndex = 1;
                });
              }
            },
            child: Tile(
                title: 'Employees',
                icon: CupertinoIcons.group,
                isSelected: _selectedIndex == 1)),
        InkWell(
            onTap: () {
              if (_selectedIndex != 2) {
                setState(() {
                  _selectedIndex = 2;
                });
              }
            },
            child: Tile(
                title: 'Attendace',
                icon: Icons.checklist_sharp,
                isSelected: _selectedIndex == 2)),
        InkWell(
            onTap: () {
              if (_selectedIndex != 3) {
                setState(() {
                  _selectedIndex = 3;
                });
              }
            },
            child: Tile(
                title: 'Summary',
                icon: Icons.calendar_month,
                isSelected: _selectedIndex == 3)),
        InkWell(
            onTap: () {
              if (_selectedIndex != 4) {
                setState(() {
                  _selectedIndex = 4;
                });
              }
            },
            child: Tile(
                title: 'Information',
                icon: Icons.info_outline,
                isSelected: _selectedIndex == 4)),
      ],
    );
  }
}
