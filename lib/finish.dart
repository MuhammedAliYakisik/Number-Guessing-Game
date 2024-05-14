import 'package:flutter/material.dart';

class finish extends StatefulWidget {
  const finish({super.key});

  @override
  State<finish> createState() => _finishState();
}

class _finishState extends State<finish> {
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
              ElevatedButton(child: Text("FİNİSh"),onPressed: (){
                setState(() {
                  Navigator.of(context).popUntil((route) => route.isFirst);

                });

              },),



            ],
          ),

        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
