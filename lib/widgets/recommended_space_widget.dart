import 'package:flutter/material.dart';

class RecommendedSpaceItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final Widget favIcon;

  RecommendedSpaceItem({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.favIcon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: favIcon,
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}