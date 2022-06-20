
import 'package:flutter/material.dart';
import 'package:untitled/categories.dart';
import 'package:untitled/splash_screen.dart';
import 'package:untitled/signUp_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signup extends StatelessWidget {
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _mailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('adsada'),
      // ),
      body:Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash_bg.jpg'),
                  fit: BoxFit.cover)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
               
                Padding(padding: EdgeInsets.symmetric(), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ad',
                  ),
                )),

                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Soyad',
                  ),
                )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Telefon',
                  ),
                )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Şifre',
                  ),
                )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child:
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                  },
                  child: const Text('Üye Ol'),

                )
                ),
              ],
            ),
          )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Future<void>signUp() async {
    await Firebase.initializeApp();
    String mail=_mailController.text.trim();
    String _pass=_passwordController.text.trim();
    DocumentSnapshot _snap=await FirebaseFirestore.instance.collection("users").doc(mail).get();
    if(_snap!=null){
      //Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
    }
    print(_snap.data());
  }
  Future<bool> register() async {
    print("initializeApp");

    await FirebaseFirestore.instance.
    collection('users').doc(_mailController.text.trim()).set({
      'mail' : _mailController.text.trim(),
      'password' : _passwordController.text.trim(),
    });
    return true;
  }

}
