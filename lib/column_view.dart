import 'package:flutter/material.dart';

class ColumnView extends StatefulWidget {
  const ColumnView({super.key});

  @override
  State<ColumnView> createState() => _ColumnViewState();
}

class _ColumnViewState extends State<ColumnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column button"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Button 1")),
              ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
              ElevatedButton(onPressed: () {}, child: const Text("Button 3")),
            ],
          ),
        ),
      ),
    );
  }
}