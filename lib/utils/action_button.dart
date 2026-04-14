import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const ActionButton({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,

          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),

          child: Center(child: Image.asset(iconImagePath)),
        ),
        SizedBox(height: 10),

        Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
