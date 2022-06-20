import 'package:flutter/material.dart';
import 'package:untitled/albinizm.dart';
import 'package:untitled/bottomNavigationBar.dart';
import 'package:untitled/hakk%C4%B1m%C4%B1zda.dart';
import 'package:untitled/kimsev.dart';
import 'package:untitled/l%C3%B6sev.dart';
import 'package:untitled/morCat%C4%B1.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/tev.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({Key? key}) : super(key: key);

  List<Map> categories = [
    {
      "title":'ALBİNİZM',
      "screen":AlbinizmScreen()
    },
    {
      "title":'MOR ÇATI',
      "screen":MorCatiScreen()
    },
    {
      "title":'KİMSEV',
      "screen":KimsevScreen()
    },
    {
      "title":'TEV',
      "screen":TEVScreen()
    },
    {
      "title":'LOSEV',
      "screen":LosevScreen()
    }



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: const  Icon(Icons.category_outlined, color: Color(0xFF131212), size:35),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HakkimizdaScreen()));

                                },
                              ),
                              IconButton(
                                icon: const  Icon(Icons.attribution_sharp, color: Color(0xFF131212), size:35),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));

                                },
                              )
                        ],
                      ),
                    ),

                      //CATEGORİES

                      Column(
                          children: categories.map((e) => buildCategory(e["title"], e["screen"], context)).toList()
                      )
                    ],
                  )
              ),
              bottomNavigationBar(context),
            ]
            )));
  }
}

Widget buildCategory(String key, dynamic value, BuildContext context) {
  return new GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => value));
      },
      child: new Container(
        padding: EdgeInsets.all(38),
        margin: EdgeInsets.only(bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: Offset(0,4)),
            ]),
        child: Text(
          key,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF131212)),
        ),
      )
  );

}