import 'package:flutter/material.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.deepPurple, width: 2),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(31, 217, 205, 205),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            _IconLabel(
              icon: Icons.call,
              label: 'CALL',
              iconColor: Colors.pinkAccent,
              textColor: Colors.redAccent,
            ),
            _IconLabel(
              icon: Icons.near_me,
              label: 'ROUTE',
              iconColor: Colors.lightBlue,
              textColor: Colors.deepOrange,
            ),
            _IconLabel(
              icon: Icons.share,
              label: 'SHARE',
              iconColor: Colors.greenAccent,
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;
  final Color textColor;

  const _IconLabel({
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: iconColor, size: 30),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
