
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {

  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final lstText = [
    'C' ,
    '*' ,
    '/' ,
    '<-' ,
    '1' ,
    '2' ,
    '3' ,
    '+' ,
    '4' ,
    '5',
    '6' ,
    '-' ,

    '7' ,
    '8' ,
    '9',
    '*' ,
    '%' ,
    '0' ,
    '.' ,
    '='
  ] ;
  String operator = "" ;
  int firstNum = 0 ;
  int secondNum = 0 ;
  final _controller = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 16) ,

        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: [
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),


              decoration:  InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8) ,
                )

              ),

            ) ,
            SizedBox(height: 16,) ,
            Expanded(

                child: GridView.count(
                  crossAxisCount: 4 ,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,

                  children: [
                    for (int i = 0 ; i < lstText.length ; i++) ...{
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey ,
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                        ) ,
                          onPressed: (){
                        if(lstText[i].contains(RegExp(r'[0-9]'))){
                          _controller.text += lstText[i] ;
                        }
                        else if (lstText[i] == 'C'){
                          _controller.clear() ;
                        }
                        else if(lstText[i] == '<-'){
                          _controller.text = _controller.text.substring(
                            0 ,
                            _controller.text.length -1 ,
                          );
                        }
                        else if (
                        lstText[i] == "="
                        ){
                          secondNum = int.parse(_controller.text) ;
                          switch(operator)  {
                            case "+" :
                              _controller.text = (firstNum + secondNum).toString() ;
                              break ;
                            case "-" :
                              _controller.text = (firstNum - secondNum).toString();
                              break ;
                            case "*" :
                              _controller.text = (firstNum * secondNum).toString() ;
                              break ;
                            case "/":
                              _controller.text = (firstNum ~/secondNum).toString() ;
                              break ;

                            default :
                              break ;
                           }

                        }
                        else {
                          operator = lstText[i] ;
                          firstNum = int.parse(_controller.text) ;
                          _controller.clear() ;
                        }
                      }, child: Text(lstText[i] , style:  const TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),))

                    }
                  ],



                  ))
          ],

        ),
      ),


    ) ;
  }
}