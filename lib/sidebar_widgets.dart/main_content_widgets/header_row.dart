import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderRow extends StatelessWidget {
  const HeaderRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Home',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        Spacer(),
        SizedBox(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                color: Colors.deepPurple[50]!,
              ),
              suffixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.deepPurple[100]!,
              ),
              fillColor: const Color.fromARGB(
                  255, 22, 12, 68), // Added background color
              filled: true, // Enable filling the background
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
