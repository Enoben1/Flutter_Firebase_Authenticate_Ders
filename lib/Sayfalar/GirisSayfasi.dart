import 'package:firebase_authenticate_ders/Sayfalar/AnaSayfa.dart';
import 'package:firebase_authenticate_ders/Sayfalar/KayitSayfasi.dart';
import 'package:flutter/material.dart';

import '../Gerekliler/Sabitler.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  _GirisSayfasiState createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {

  ///şifre kımındaki gözü açıp kapamak için gerekli olan bool değeri
  bool VisiblePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Ana uygulama ekranı
      backgroundColor: RenkArkaPlan, // sabitler.dart'ın içerisindeki tanımlı renk
      body: Column(
        children: [
          /// Üst boşluk
          Expanded(flex: 6, child: SizedBox()),

          /// Giriş yap başlığı
          Expanded(
              flex: 2,
              child: Text(
                "Giriş Yap",
                style: StilYazi1Baslik,// sabitler.dart'ın içerisindeki tanımlı text stili
              )),

          /// Email giriş alanı
          Expanded(
              flex: 3,
              child: Padding(
                // Yanlardan boşluk verme
                padding: const EdgeInsets.symmetric(horizontal: 28),// sağ ve soldan 28 boşluk verme
                child: TextField(
                    maxLength: 30,
                    decoration: InputDecoration(
                        labelText: "Email", labelStyle: StilYazi1Metin)),//Giriş kutusunun içerisinde yazan metin
              )),

          ///Boşluk
          Expanded(flex: 1, child: SizedBox()),

          /// Şifre giriş alanı
          Expanded(
              flex: 3,
              child: Padding(
                // Yanlardan boşluk verme
                padding: const EdgeInsets.symmetric(horizontal: 28),// sağ ve soldan 28 boşluk verme
                child: TextField(
                    maxLength: 16,
                    obscureText: !VisiblePassword,
                    decoration: InputDecoration(
                        labelText: "Şifre",   //Giriş kutusunun içerisinde yazan metin
                        labelStyle: StilYazi1Metin,
                        suffixIcon: IconButton(   //Giriş kutusunun en sonuna konulan icon
                          icon: Icon(VisiblePassword    //eğer visiblepassword değeri
                              ? Icons.visibility    // true ise göz ikonu yap
                              : Icons.visibility_off),    //değile kapalı göz ikonu yap
                          onPressed: () {
                            setState(() {
                              VisiblePassword = !VisiblePassword;   // Tıklandığında visiblepassword değerini true ise false, false ise true yap
                            });
                          },
                        ))),
              )),

          /// Kayıt ol yazısı
          Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kayıt olmadın mı?",
                    style: StilYazi1Metin,
                  ),
                  InkWell(    // Tıklanabilir metin
                    child: Text(
                      " Kayıt ol",
                      style: StilYazi1LinkMetin,
                    ),
                    onTap:(){
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const KayitSayfasi()),
                        );
                      });
                    },
                  ),
                ],
              )),

          /// Giriş butonu
          Expanded(
              flex: 2,
              child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AnaSayfa()),
                    );

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Giriş Yap",
                      style: StilYazi1Metin,
                    ),
                  ))),

          /// Alt boşluk
          Expanded(flex: 6, child: SizedBox()),
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
