import 'package:first_application/common/my_snackbar.dart';
import 'package:flutter/material.dart';



class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                showmySnackBar(context: context, content: "Container 1 tapped");
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: const Color.fromARGB(255, 163, 147, 145),
                child: Text("Container 1", style: TextStyle(fontSize: 30)),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onDoubleTap: () {
                showmySnackBar(
                  context: context,
                  content: "Container 2 tapped",
                  color: const Color.fromARGB(255, 110, 91, 90),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: const Color.fromARGB(255, 75, 135, 77),
                child: Text("Container 2", style: TextStyle(fontSize: 30)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}