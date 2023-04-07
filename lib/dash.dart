import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: hom(),));
}
class hom extends StatefulWidget {
  const hom({Key? key}) : super(key: key);

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  List l=["","","","","","","","",""];
  int i=0;
  String ans="0";
  @override
  void initState() {
    super.initState();
    for(int i=0;i<l.length;)
    {
      int a=Random().nextInt(9);
      if(!l.contains(a))
      {
        l[i]=a;
        i++;
      }
    }
    for(int i=0;i<l.length;i++)
    {
      if(l[i]==0)
      {
        l[i]="";
      }
    }
    setState(() {

    });



  }

  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
      drawer: Drawer(

      ),
      appBar: AppBar(title: Text("puzzle"),),
      body: Column(
        children: [

          Expanded(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded
                  (child: InkWell(onTap: () => get(0),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[0]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
                Expanded
                  (child: InkWell(onTap: () => get(1),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[1]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
                Expanded
                  (child: InkWell(onTap: () => get(2),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[2]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
              ],

            ),


          ),
          Expanded(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded
                  (child: InkWell(onTap: () => get(3),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[3]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
                Expanded
                  (child: InkWell(onTap: () => get(4),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[4]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
                Expanded
                  (child: InkWell(onTap: () => get(5),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[5]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
              ],

            ),


          ),
          Expanded(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded
                  (child: InkWell(onTap: () => get(6),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[6]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
                Expanded
                  (child: InkWell(onTap: () => get(7),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[7]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
                Expanded
                  (child: InkWell(onTap: () => get(8),
                  child: Container(width: double.infinity,height: double.infinity,
                    margin:EdgeInsets.all(20),
                    decoration: BoxDecoration( color: Colors.blueGrey,border: Border.all(width: 4,color: Colors.orange),borderRadius: BorderRadius.circular(10)),
                    child: Text("${l[8]}",
                      style: TextStyle(fontSize: 40),),alignment: Alignment.center,),
                ),
                ),
              ],

            ),


          ),




          ElevatedButton(onPressed: () {
            showDialog(
              barrierColor: Colors.transparent,
              barrierDismissible: false,
              context: context, builder: (context) {

              return AlertDialog(title: Text("you are winner",style: TextStyle(color: Colors.blueAccent),)
                ,content: Text("Well play play again",style: TextStyle(color: Colors.blueAccent)),actions: [
                  TextButton(onPressed: () {

                    Navigator.pop(context);

                  }, child: Text("cancel")),
                  IconButton(onPressed:  ()
                  {

                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return hom();
                    },));

                    Colors.green;
                  }, icon: Icon(Icons.home,color: Colors.blueAccent,))
                ],);
            },);
          }, child: Text("Reset")),
        ],
      ),
    );
  }
  get(int a)
  {

    if(l[0]=="")
    {
      if(a==1){
        l[0]=l[1];
        l[1]="";
      }
      else if(a==3){
        l[0]=l[3];
        l[3]="";
      }
    }
    else if(l[1]=="")
    {
      if(a==0){
        l[1]=l[0];
        l[0]="";
      }
      else if(a==2)
      {
        l[1]=l[2];
        l[2]="";
      }
      else if(a==4){
        l[1]=l[4];
        l[4]="";
      }
    }
    else  if(l[2]=="") {
      if (a == 1) {
        l[2] = l[1];
        l[1] = "";
      }

      else if (a == 5) {
        l[2] = l[5];
        l[5] = "";
      }
    }
    else if(l[3]=="") {
      if (a == 0) {
        l[3] = l[0];
        l[0] = "";
      }
      else if (a == 4) {
        l[3] = l[4];
        l[4] = "";
      } else if (a == 6) {
        l[3] = l[6];
        l[6] = "";
      }
    }
    else if(l[4]=="")
    {
      if(a==1) {
        l[4] = l[1];
        l[1] = "";
      } else if(a==5)
      {
        l[4] = l[5];
        l[5] = "";
      }
      else if(a==3)
      {
        l[4] = l[3];
        l[3] = "";
      }
      else if(a==7)
      {
        l[4] = l[7];
        l[7] = "";
      }


    }
    else if(l[5]=="")
    {
      if(a==2)
      {
        l[5] = l[2];
        l[2] = "";
      }
      else if(a==4)
      {
        l[5] = l[4];
        l[4] = "";
      }
      else if(a==8)
      {
        l[5] = l[8];
        l[8] = "";
      }
    }
    else if(l[6]=="")
    {
      if(a==3)
      {
        l[6] = l[3];
        l[3] = "";
      }
      else if(a==7)
      {
        l[6] = l[7];
        l[7] = "";
      }

    }
    else if(l[7]=="") {
      if (a == 6) {
        l[7] = l[6];
        l[6] = "";
      }
      else if (a == 8) {
        l[7] = l[8];
        l[8] = "";
      }
      else if (a == 4) {
        l[7] = l[4];
        l[4] = "";
      }
    }
    else if(l[8]=="")
    {
      if(a==7)
      {
        l[8] = l[7];
        l[7] = "";
      }
      else if(a==5)
      {
        l[8] = l[5];
        l[5] = "";
      }
      else if(a==8)
      {
        l[5] = l[8];
        l[8] = "";
      }
    }


    setState(() {

    });
  }
}

