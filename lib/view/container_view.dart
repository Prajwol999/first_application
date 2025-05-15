import 'package:flutter/material.dart';

class ContainerView extends StatefulWidget {
  const ContainerView({super.key});

  @override
  State<ContainerView> createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:SafeArea(child:Container(

        height:double.infinity,
        width:double.infinity,

        alignment:Alignment.centerRight,
        child:const Text("Here is a container"),
        decoration: BoxDecoration(
          shape:BoxShape.circle,
        
          color:Colors.blue,
          border:Border.all(
            color:Colors.black,
            width:3,
          ),
        ),
      ))
    );
  }
}