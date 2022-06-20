import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class VisitScreen extends StatelessWidget {
  const VisitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ziyaret"),
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
                  'Nasıl Ziyaret Edebilirim?\nBurada her kurum kendi içinde yönetilmekte.Aşağıda her kurumun kendine ait müsait günleri ve saatleri yer alıyor.Sie kendinize uygun zaman dilimini talep ediyorunuz.Seçtiğiniz kurumun yetkilisi talebinizi gördüğünde o tarih ve saati sizin için kapatıyor.Randevu işlemnizi gerçekleştirmiş oluyorsunuz.Kurum için etkinlik düzenlemek istiyorsanız etkinlik tarihlerini kontrol edip arayarak planınızı gerçekleştirebilirsiniz.Trace bağış ve ziyarette bulunanan tüm kullanıcılarına teşekkür ediyor.\n\n\n\nEtkinlik Günleri\nCuma ve Cumartesi günleri bu kurumun etkinlik günleridir. Planınızı ve şartlarınızı konuşmak tarih almak için lütfen  yetkilimizle itibata geçiniz.\n                 Tel : 0216 861 21 22'),

            ),
            bottomNavigationBar(context),
          ],
        ),
      ),
    );
  }
}