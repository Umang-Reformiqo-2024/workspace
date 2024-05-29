import 'package:flutter/material.dart';
import 'package:workspace/app_data/app_colors/app_color.dart';

class CategoryItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isSelected;

  CategoryItem({
    required this.iconPath,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Image.asset(
            iconPath,
            height: 40,
            width: 40,
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColor.blackTextPrimary : AppColor.blackTextSecondary,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}