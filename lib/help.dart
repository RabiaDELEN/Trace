import 'package:flutter/material.dart';
import 'package:untitled/helpTwo.dart';
import 'package:untitled/helpThree.dart';

import 'bottomNavigationBar.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YARDIM"),
      ),
      body: Container(decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash_bg.jpg'),
              fit: BoxFit.cover)
      ),
        margin: EdgeInsets.all(0),
        child: Stack(
          children: [
            SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                          'Merhaba,\nBu platformun büyümesi ve kurum üyelerimizin ihtiyaçlarına daha etkin bir biçimde yanıt vermek amacıyla sizleride bizi destek olmaya davet ediyoruz. Çocuklarımızın , gençlerimizin , kadınlarımızın ihtiyaçlarına farklı konularda destek olmak ayrıca platformumuzun daha da büyüyerek sesimizi daha geniş kitlelere duyurmak için desteklerinize ihtiyacımız var.İsterseniz aşağıda belirtilen ibanlara kendiniz belirlediğiniz tutarda bağış yapabilir veya ihtiyaç listesinden seçtiğiniz ürünün ismi ve adedini yazarak bağışta bulunabilirsiniz.\nHadi sende elini uzat ve desteğinle gücümüze güç kat. Farkında ol varlığınla destek ol!\n\n\nAlbinizm Derneği\n\nBanka: Garanti Bankası\nIBAN: TR31 0006 2000 7650 0006 2976 52\n\nİhtiyaç listesi;\n         Güneş gözlüğü  200 TL\n\n         Büyüteç        150 TL\n\n         Güneş kremi    90  TL'),

                    ),
                    helpTwo(),
                    helpThree()
                  ],
                )
            ),
            bottomNavigationBar(context),
          ],
        )
      ),
    );
  }
}
