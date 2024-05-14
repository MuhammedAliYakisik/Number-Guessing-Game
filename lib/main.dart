import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uygulama_yapisi/second.dart';
import 'package:uygulama_yapisi/tahmin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa()
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  var tfcontroller = TextEditingController();
  var veri = "";



  @override
  Widget build(BuildContext context) {

    var ekranbilgisi = MediaQuery.of(context);
    var ekranyukseklik = ekranbilgisi.size.height;
    var ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Ana Sayfa",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklik/10),
              child: Text("Tahmin Oyunu",style: TextStyle(fontSize: ekrangenisligi/10),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklik/15),
              child: SizedBox(width: ekrangenisligi/1.7,child: Image.asset("resimler/zar.png")),
            ),
            Padding(
              padding:  EdgeInsets.only(top: ekranyukseklik/15),
              child: ElevatedButton(child: Text("Oyuna Başla",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => tahmin()) );

              },),
            )
            
          ],
        ),

      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
