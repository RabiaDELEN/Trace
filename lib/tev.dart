import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class TEVScreen extends StatelessWidget {
  const TEVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEV"),
      ),
      body: Container(decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_bg.jpg'),
              fit: BoxFit.cover)
      ),
        margin: EdgeInsets.all(0),
        child: Stack(
          children: [
            Center(
              child: Text(
                  'TEV NEDİR?\n54 yıl önce 205 iş insanı, öğretim üyesi ve entelektüel, eğitimin yaygınlaşması amacıyla merhum Vehbi Koç un önderliğinde bir araya geldi. 1967 Türkiye’sinin şartlarında birçok kişi için hayal bile edilemeyecek bir seferberlikle okumak isteyen gençlere destek olmak için Türk Eğitim Vakfı’nı kurdular. Onlar vasıflı insan gücünün bu ülkeyi kalkındıracağını, bu gücün de ancak eğitimle sağlanabileceğini biliyordu. Bu yürekli ordu, Türk Eğitim Vakfı’nı dayanışma ruhu ile hayata geçirdi.'),

            ),
            bottomNavigationBar(context),
          ],
        )
      ),
    );
  }
}