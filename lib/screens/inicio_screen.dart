

import 'package:flutter/material.dart';


class InicioScreen extends StatefulWidget{
  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext contex){
    return Scaffold(
        body: Container(
          margin:const EdgeInsets.only(left: 24, top:0, right: 24, bottom:0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // Content of my Column
              
                Container(
                  padding: const EdgeInsets.only(
                  top: 50,
                  
                  ),
                  color: Colors.red,
                  child: Container(
                    height: 150,
                    color: Colors.black,
                    // child: const Text(
                    //   "imagen vector",
                    //    style: TextStyle(color: Colors.white),
                    // )
                  ),
                ),
              
                
              //Item 2/4
              
              
                //  Container(
                //   color: Colors.yellow,
                //   ElevatedButton(
                //     child: const Text("Enviar"),
                //     onPressed: () { },
                //   ),
                //   OutlineButton(
                //     child: const Text("Enviar"),
                //     onPressed: () { },
                //   ),
                //   //child: const Text("Item 1"),
                // ),
              Container(
                child: Column(children: [
                  ElevatedButton(
                     child: const Text("Enviar"),
                     onPressed: () { },
                   ),
                   ElevatedButton(
                     child: const Text("Enviar"),
                     onPressed: () { },
                   ),
                   OutlineButton(
                     child: const Text("Enviar"),
                     onPressed: () { },
                   ),
                ],)  
              ),

              //Item 3/4
              
              
                Container(
                  color: Colors.blueAccent,
                  //child: const Text("Item 1"),
                ),
              
              
            ],
          ),
        ),
      );
  }
}