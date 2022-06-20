import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthService{
  FirebaseAuth _firebaseAuth=FirebaseAuth.instance;
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;

  //giriş yapma ekranı
  Future<User?> signIn(String email, String passoword) async{
    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password:passoword);

    User? _user=userCredential.user;
    return _user;
  }
}





