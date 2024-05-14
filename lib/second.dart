import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uygulama_yapisi/finish.dart';

class Second extends StatefulWidget {
  String isim ;
  int yas;
  double boy;
  bool evlimi;
  Second({required this.isim,required this.boy,required this.evlimi,required this.yas});
  

  

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(


          backgroundColor: Theme.of(context).colorScheme.inversePrimary,


          title: Text("Ana Sayfa"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(child: Text("COME BACK"),onPressed: (){
                setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>finish()));

                });

              },),
              Text("isim: ${widget.isim}"),
              Text("yas: ${widget.yas}"),
              Text("boy: ${widget.boy}"),
              Text("evlimi: ${widget.evlimi}"),




            ],
          ),

        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
