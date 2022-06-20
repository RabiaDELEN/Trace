import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class LosevScreen extends StatelessWidget {
  const LosevScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LÖSEV"),
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
                  'LÖSEMİ NEDİR?\nÇocukluk çağındaki kanser vakalarının %35 ini lösemiler oluşturur ve birinci sıradadır. Lösemiler hücre cinsine göre ALL (Akut Lenfoblastik Lösemi) ve AML (Akut Myeloblastik Lösemi) olmak üzere 2 ana gruba ayrılır. Kendi içlerinde de alt sınıflar tanımlanabilir. Türkiye de her yıl 16 yaşın altında 1200-1500 yeni lösemili çocuk vakası bildirilmektedir.Herhangi bir etkiyle damarlarımızda dolaşan kanın esas yapım yeri olan kemik iliğimizdeki ana hücrelerde oluşan şifre değişikliği ile blast adını verdiğimiz olgun olmayan kan hücrelerinde artış meydana gelmektedir. Bu hücreler hızla yayılarak kemik iliğini, lenf bezlerini, dalağı, karaciğeri, beyin ve merkezi sinir sistemini tutmaktadır.\nLÖSEV NEDİR?\nLÖSEV Lösemili Çocuklar Sağlık ve Eğitim Vakfı, 1998 yılında kuruldu. Lösemili çocukları tedavi amacıyla SSK Ankara Çocuk Hastanesine yatırdığımız ilk günlerdi... Hastane yönetiminden çocukların odaları için küçük bir televizyon talebine aldığımız olumsuz yanıt sonrasında o hastanede çalışan doktorlar, hemşireler ve personel, aramızda para toplayarak küçük bir televizyon aldık. İlk zamanlarda bir çocuğumuzun yol parasını ya da okul ihtiyacını karşılamak bizler için büyük sorundu. Ancak günler geçtikçe büyüdük, güçlendik; projeler geliştirdik, hedeflerimizi büyüttük. Çocuklarımızın her türlü ihtiyaçlarını karşılamak için dürüstçe ve tüm enerjimizle çalıştık.'),

            ),
            bottomNavigationBar(context),
          ],
        )
      ),
    );
  }
}
