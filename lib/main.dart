import 'package:flutter/material.dart';
import 'package:untitled/categories.dart';
import 'package:untitled/forgetPassword.dart';
import 'package:untitled/signUp.dart';
import 'package:untitled/splash_screen.dart';
import 'package:untitled/signUp_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {

  runApp(const MaterialApp(
    title: 'TRACE',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: getHome(),
    );
  }

  getHome(){
    return Signup();
  }
}

class MyHomePage extends StatefulWidget {
  // MyHomePage({Key? key, required this.title}) : super(key: key);
  //
  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      body:SingleChildScrollView(
        child: Container(
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
                    controller: _mailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                    ),
                  )),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Şifre',
                    ),
                  )),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child:
                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        print("Üye oluşturuldu.");
                        //register();
                        login();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
                      },
                      child: const Text('Giriş'),

                    )
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), child:
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
                    },
                    child: const Text('Şifremi Unuttum'),

                  )
                  ),
                ],
              ),
            )),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Future<void>login() async {
    await Firebase.initializeApp();
    String mail=_mailController.text.trim();
    String _pass=_passwordController.text.trim();
    DocumentSnapshot _snap=await FirebaseFirestore.instance.collection("users").doc(mail).get();
    if(_snap!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesPage()));
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
