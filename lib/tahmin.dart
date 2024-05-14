import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uygulama_yapisi/sonuc.dart';

class tahmin extends StatefulWidget {
  const tahmin({super.key});

  @override
  State<tahmin> createState() => _tahminState();
}

class _tahminState extends State<tahmin> {


  var tftahmin = TextEditingController();
  int kalanhak = 5;
  int rastgele = 0;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgele = Random().nextInt(101);
    print("Rastgele sayı: $rastgele");

  }


  @override
  Widget build(BuildContext context) {

    var ekranbilgisi = MediaQuery.of(context);
    var ekranyukseklig = ekranbilgisi.size.height;
    var ekrangenislgi = ekranbilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Tahmin Ekranı",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklig/8),
              child: Text("Kalan Hak:$kalanhak",style: TextStyle(color: Colors.red,fontSize: ekrangenislgi/12),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklig/25,right: ekrangenislgi/5),
              child: Text("Yardım:$yonlendirme",style: TextStyle(color: Colors.black,fontSize: ekranyukseklig/20),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklig/50),
              child: TextField(controller: tftahmin,keyboardType: TextInputType.number,textAlign: TextAlign.center,decoration: InputDecoration(
                labelText: "Tahmin",border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.2))
              )
              ),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklig/20),
              child: SizedBox(width: ekrangenislgi/2,
                child: ElevatedButton(child: Text("Tahmin et",style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),onPressed: (){
                  setState(() {
                    kalanhak = kalanhak - 1;


                  });
                  int tahmin = int.parse(tftahmin.text);

                   if(tahmin==rastgele){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sonuc(true)));
                      return;
                    }

                   setState(() {
                     if(tahmin > rastgele){
                       yonlendirme = "Biraz azalt";
                     }
                     else if(tahmin<rastgele){
                       yonlendirme = "Biraz artır";
                     }

                   });

                   if(kalanhak==0){
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sonuc(false)));
                   }

                   tftahmin.text ="";
                },),
              ),
            )
          ],
        ),

      ),
    );
  }
}
