import 'package:first_application/common/common_card_view.dart';
import 'package:first_application/common/my_snackbar.dart';
import 'package:flutter/material.dart';


class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View Example'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 100; i++) ...{
              if (i % 2 == 0) ...{
                
                CommonCardView(
                  title: "Card $i",
                  color: Colors.blue,
                  onTap: () {
                    showmySnackBar(
                      context: context,
                      content: "Even number selected",
                      color: Colors.blueAccent,
                    );
                  },
                ),
              } else ...{
                
                CommonCardView(
                  title: "Card $i",
                  color: Colors.teal,
                  onTap: () {
                    showmySnackBar(
                      context: context,
                      content: "Odd number selected",
                      color: Colors.redAccent,
                    );
                  },
                ),
              },
            },
          ],
        ),
      ),
    );
  }
}
