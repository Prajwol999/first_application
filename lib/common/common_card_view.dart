import 'package:flutter/material.dart';

class CommonCardView extends StatelessWidget {
  final String title;
  final Color color;

  const CommonCardView({super.key, required this.title, required this.color, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color.fromARGB(255, 113, 113, 113),
            width: 2,
          ),
        ),
        color: color,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}