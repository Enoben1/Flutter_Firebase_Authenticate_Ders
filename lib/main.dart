import 'package:firebase_authenticate_ders/Gerekliler/Sabitler.dart';
import 'package:firebase_authenticate_ders/Sayfalar/GirisSayfasi.dart';
import 'package:firebase_authenticate_ders/Sayfalar/KayitSayfasi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RenkArkaPlan,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///Giriş Yap butonu
              Container(
                width: 100,
                height: 40,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GirisSayfasi()),
                  );
                }, child: Text("Giriş Yap")),
              ),

              ///Ara boşluk
              SizedBox(height: 25,),

              ///Kayıt ol butonu
              Container(
                width: 100,
                height: 40,
                child: ElevatedButton(
                    onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KayitSayfasi()),
                  );
                }, child: Text("Kayıt Ol")),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
