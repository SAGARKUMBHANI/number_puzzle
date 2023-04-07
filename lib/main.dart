import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_puzzle/dash.dart';

void main()
{
  runApp(MaterialApp(home: home(),));
}
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number Puzzle")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(

                decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("images/cube.jpg"))),
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 200),
                    ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return hom();
                      },));

                    },  style:ElevatedButton.styleFrom
                      (primary: Colors.grey.shade800,
                        shape:BeveledRectangleBorder
                          (borderRadius:BorderRadius.circular(20))),child:Text("Play Now",style: TextStyle(color: Colors.white),))
                  ]),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
