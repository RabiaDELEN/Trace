import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class HakkimizdaScreen extends StatelessWidget {
  const HakkimizdaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HAKKIMIZDA"),
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
                'BİZ KİMİZ?\nVizyonumuz\nBağımsız ve finansal olarak sürdürülebilir sivil toplum kuruluşlarının daha etkin olduğu toplumsal bir düzen.\nMisyonumuz\nBireysel bağışçılık kültürünü geliştirmeye yardımcı olmak.\nHedefimiz\nSivil toplum kuruluşlarını daha görünür hale getirmek ve insanlara kolay bir bağış deneyimi yaşatmak.Ziyaretlerle kuruluşları canlandırmak.\nHİZMETLERİMİZ\nGeçtiğimiz 1 yılda 450 çocuğa, 180 kadına, 340 öğrenciye ve 186 nadir hastalığa sahip insana el uzattık.Ziyaretlerle kurumlarımıza neşe ve umut kaynağı olduk.Trace sizinle büyüdü ve büyümeye devam ediyor.  \nSIKÇA SORULANLAR\nBağışlarım nereye gidiyor?\nBağışlarınız seçtiğiniz kurumun yetkilisine doğrudan iban yoluyla ulaştığı için direkt kuruma gider.\nTrace bağışlardan hizmet bedeli alır mı?\nHayır, almaz.\nTrace’in tüzel kişiliği nedir?\nTrace Türkiye’de 2022 yılında çıkan bağış ve ziyaret uygulamasıdır. \nGİZLİLİK\nTrace yaptığınızın bağışların miktarını ve hedefini diğer kullanıcılara göstermez.Kredi kartıyla değil iban yoluyla ulaştırma sağlandığı için banka tarafından herhangi bir müdahalede bulunulmaz.Bilgileriniz ve bağışlarınız traceyle güvendedir.'),

          ),
          bottomNavigationBar(context),
        ],),
      ),
    );
  }
}