import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class AlbinizmScreen extends StatelessWidget {
  const AlbinizmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALBİNİZM"),
      ),
      body: Container(decoration: const BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/images/splash_bg.jpg'),
              fit: BoxFit.cover)
              ),
        margin: EdgeInsets.all(0),
        child: Stack(children: [
          Center(
            child: Text(
                'ALBİNİZM NEDİR?\nAlbinizm, canlilara renk veren melanin pigmentinin üretimini kısmen veya tamamen engelleyen genetik değişimlerin sonucu olarak ortaya çıkan durumdur.\n\nAlbinizm, kalıtsal (genetik) bir durumdur. Bir nesilden diğerine aktarılır. Bir albinizm geni, 7 göbek geriye kadar varlığını sürdürebilir. Çoğu albinizmli çocuğun ebeveynlerinin saç ve göz rengi normaldir ve geçmişlerinde böyle bir durum görülmemektedir. Bir çocuğun albinizmli olabilmesi için, hem anne hem de baba “Albinizm Geni Taşıyıcısı” olmalıdır. Albinizm, çekinik gen olduğundan, taraflardan yalnızca birinde albinizm geni bulunması durumda, çocuk albinizm ile doğmaz.\nALBİNİZM DERNEĞİ NEDİR?\nAlbinizm Derneği olarak, ülkemizde albinizm konusunda farkındalık yaratmak, albinizm sahibi bireyler ve ailelerinin yaşam kalitesini arttırmak amacıyla yola çıktık.\n\nBirinci hedefimiz, albinizme sahip yetişkinlerimiz, gençlerimiz ve çocukları olan ailelerimizin albinizm konusunda yeterli bilgiye sahip olmasını sağlamak ve albinizm sahibi bireyleri biraraya getirmektir.\nİkinci büyük hedefimiz, ülkemizde yaşayan tüm albinizmli bireylere destek olmaktır. Sosyal haklarının iyileştirilmesi büyük önem taşımaktadır.'),

          ),
          bottomNavigationBar(context),
        ],),
      ),
    );
  }
}