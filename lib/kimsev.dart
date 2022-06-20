import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class KimsevScreen extends StatelessWidget {
  const KimsevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KİMSEV"),
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
                  'KİMSEV NEDİR?\nKimsesiz çocuklarımızın gelecekte sağlıklı bir nesil olması için okul çağından mezuniyetine, iş hayatından, evlilik hayatına kadar destekliyoruz.KİMSEV; Korunmaya, bakıma, yardıma muhtaç veya kimsesiz çocukların korunması, eğitilerek topluma kazandırılması, milli ve manevi değerlere sahip olarak yetiştirilmesi, Türkiye’nin ilmi, iktisadi, içtimai ve kültürel kalkınmasına yardımcı olması gayesi ile kurulmuştur.0-6, 6-12 yaş arası korunmaya muhtaç ve kimsesiz çocuklar için çocuk yuvaları açmak ve işletmek.. 13-18 yaş arası korunmaya muhtaç ve kimsesiz çocuklar için çocuk evleri sitesi açmak gibi çalışma alanları KİMSEV’in gayeleri arasındadır.'),

            ),
            bottomNavigationBar(context),
          ],
        )
      ),
    );
  }
}