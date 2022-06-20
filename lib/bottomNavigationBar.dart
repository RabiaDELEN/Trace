  import 'package:flutter/material.dart';
import 'package:untitled/help.dart';
import 'package:untitled/visit.dart';

 Widget bottomNavigationBar (BuildContext context) {
   return Align(
     alignment: Alignment.bottomCenter,
     child: Container(
       decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             offset: Offset(0, -3),
             color: Colors.black.withOpacity(0.25),
             blurRadius: 10)
         ],
         color: Color(0xFFEFF5FB),
       ),
       width: double.infinity,
       padding: EdgeInsets.symmetric(vertical: 13),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           buildNavIcon(iconData: Icons.house_outlined, active: true, onPressed: () {

           }),
           buildNavIcon(iconData: Icons.account_balance_wallet_outlined, active: false,onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => HelpScreen()));
           }),
           buildNavIcon(iconData: Icons.people , active: false,onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => VisitScreen()));
           }),
         ],
       )
     ),
   );
 }

 Widget buildNavIcon({required IconData iconData, required bool active,required Function() onPressed}) {
   return IconButton(
   icon: new Icon(iconData, size:40),
   color: Color(active ? 0xFF0001FC : 0XFF0A1034),
   onPressed: onPressed);
 }
