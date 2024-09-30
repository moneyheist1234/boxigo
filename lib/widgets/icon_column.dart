import 'package:flutter/material.dart';

class IconColumn extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  IconColumn({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 24.0, color: color),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ],
    );
  }
}
