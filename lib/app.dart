

// import 'package:first_application/first_view.dart';
import 'package:first_application/layout_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home:LayoutView());
    
  }
  
}