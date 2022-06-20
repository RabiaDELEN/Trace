import 'package:flutter/material.dart';
import 'package:untitled/categories.dart';
import 'package:untitled/splash_screen.dart';
import 'package:untitled/signUp_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'bottomNavigationBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
       appBar: AppBar(
         title: Text('Profil'),
       ),
      body:Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_bg.jpg'),
                  fit: BoxFit.cover)
          ),
          child: Stack(children:[
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Padding(padding: EdgeInsets.symmetric(), child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Adınız*',
                      ),
                    )),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Soyadınız*',
                      ),
                    )),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Telefon Numarası',
                      ),
                    )),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email*',
                      ),
                    )),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child:
                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                      },
                      child: const Text('Kaydet'),

                    )
                    ),
                  ],
                ),
              ),
          bottomNavigationBar(context),

      ])
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      ));
  }


}