import 'package:firebase_authenticate_ders/Gerekliler/Sabitler.dart';
import 'package:flutter/material.dart';

class KayitSayfasi extends StatefulWidget {
  const KayitSayfasi({Key? key}) : super(key: key);

  @override
  _KayitSayfasiState createState() => _KayitSayfasiState();
}

class _KayitSayfasiState extends State<KayitSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenkArkaPlan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Kayıt Sayfası", style: StilYazi1Baslik,)
            ],
          ),
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
