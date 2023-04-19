import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
   int x = 10;
   int a = 2;
   int b = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my first app"),
      ),
    body: SafeArea(child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),             
                ),
                ),
                Row(
                  children: [

                      ElevatedButton(onPressed: () {
                        a++;
                        setState(() {
                          
                        });
                      }, child: Text("plus")),
                Text(a.toString(),style: TextStyle(fontSize: 40),),
                                ElevatedButton(onPressed: () {
                  a--;
                  setState(() {
                  });
                },
                 child: Text('minus')),
                  ],
                ),


              ],
            ),
    
    
    ),
   
    floatingActionButton: FloatingActionButton(
      onPressed: () {
      
       setState(() {
          x++;
       });
       print(x.toString());
      },
      child: Icon(Icons.add),
    ),
    );
     
  }
}