import 'package:flutter/material.dart';

class sonuc extends StatefulWidget {

  bool sonucum;

  sonuc(this.sonucum);



  @override
  State<sonuc> createState() => _sonucState();
}

class _sonucState extends State<sonuc> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    var ekranyukseklig = ekranbilgisi.size.height;
    var ekrangenislgi = ekranbilgisi.size.width;
    var durum = "Kazandınız";
    
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Ana Sayfa",style: TextStyle(color: Colors.white),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              widget.sonucum ? Padding(
                padding:  EdgeInsets.only(top: ekranyukseklig/50),
                child: Image.asset("resimler/happyy.jpeg"),
              ):Padding(
                padding:  EdgeInsets.only(top: ekranyukseklig/50),
                child: SizedBox(width: ekrangenislgi/1.5,child: Image.asset("resimler/sad.jpg")),
              ),
              
              Padding(
                padding:  EdgeInsets.only(top: ekranyukseklig/10),
                child: Text(widget.sonucum ? "KAZANDINIZ":"Kaybettiniz",style: TextStyle(fontSize: ekrangenislgi/10),),
              ),
              
              Padding(
                padding:  EdgeInsets.only(top: ekranyukseklig/10),
                child: SizedBox(width: ekrangenislgi/2,
                  child: ElevatedButton(child: Text("Tekrar dene"),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black
                  ),onPressed: (){
                    Navigator.pop(context);
                  },),
                ),
              ),

              





            ],
          ),

        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
