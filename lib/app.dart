

// import 'package:first_application/first_view.dart';
// import 'package:first_application/column_view.dart';
// import 'package:first_application/layout_view.dart';
// import 'package:first_application/list_tile_view.dart';
// import 'package:first_application/model/arithmetic_model.dart';
// import 'package:first_application/view/arithmetic_new_view.dart';
// import 'package:first_application/view/container_view.dart';
// import 'package:first_application/view/flexible_expanded_view.dart';
// import 'package:first_application/view/student_view.dart';
// import 'package:first_application/view/load_image_view.dart';
// import 'package:first_application/view/card_view.dart';
import 'package:first_application/view/calculator_view.dart';
// import 'package:first_application/view/grid_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CalculatorView());
  }
}