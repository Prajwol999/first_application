import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  int ? selectedIndex=-1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Grid View"),),
     body: GridView.count(
       padding: const EdgeInsets.all(8),
         crossAxisSpacing: 8,
         mainAxisSpacing: 8,
         crossAxisCount: 2,
         childAspectRatio: 4/5,
       children:  [
        // SizedBox(height: 8,) ,
        //  ElevatedButton(onPressed: (){
        //
        //  }, child: const Text("Button 1")) ,
        //  SizedBox(height: 8,) ,
        //  ElevatedButton(onPressed: (){
        //
        //  }, child: const Text("Button 2")) ,

         for (int i = 0; i < 10; i++) ...{
            SizedBox(
              height: 90,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      selectedIndex == i ? Colors.green : Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },
                child: Text(
                  '${i + 1}',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          },
        ],
      ),
    );
  }
}