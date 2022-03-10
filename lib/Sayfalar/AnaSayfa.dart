import 'package:firebase_authenticate_ders/Gerekliler/Sabitler.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenkArkaPlan,
      body: Column(
        children: [
          Expanded(flex: 2, child: Text(""),),

          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                elevation: 10,  // 3 boyutlu düzlemde yükseklik (gölge) ayarı
                color: RenkCard,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("E-postanız", style: StilYazi1Baslik3,),
                        Text("data", style: StilYazi1Baslik3,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(flex: 2, child: Text(""),),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: RenkArkaPlan,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.close, color: RenkYazi1,)),
          ],
        ),
      ),
    );
  }
}
