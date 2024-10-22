import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String iconname;

  const MyTab({
    super.key,
    required this.iconPath,
    required this.iconname,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Asegura que todo esté centrado verticalmente
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            iconPath,
            color: Colors.grey[600],
            height: 30,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          iconname,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
