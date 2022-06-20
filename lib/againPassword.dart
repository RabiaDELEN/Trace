import 'package:flutter/material.dart';
import 'package:untitled/categories.dart';

class AgainPasswordScreen extends StatelessWidget {
  const AgainPasswordScreen({Key? key}) : super(key: key);

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
                Image.asset(
                  "assets/icon/logo.png",
                  // color: Colors.white,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Yeni Şifre',
                  ),
                )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Şifre Tekrar',
                  ),
                )),
                Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child:
                ElevatedButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
                  },
                  child: const Text('Şifre Kaydet'),

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
}
