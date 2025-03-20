import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.yellow.shade800,
              width: 3,
            ),
          ),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[300],
            child: ClipOval(
              child: Image.asset(
                'assets/employee.jpg',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Pooja Mishra',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.deepPurple[300]!)),
          child: const Text(
            'Admin',
            style: TextStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}
