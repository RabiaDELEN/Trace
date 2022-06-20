import 'package:flutter/material.dart';

import 'bottomNavigationBar.dart';

class MorCatiScreen extends StatelessWidget {
  const MorCatiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOR ÇATI"),
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
                  'MOR ÇATI NEDİR?\nMor Çatı Kadın Sığınağı Vakfı 1990 yılında kadına yönelik şiddetle mücadele etmek amacıyla feministler tarafından kuruldu. Mor Çatı’da erkek şiddetine karşı mücadele feminist yöntemlere dayalı olarak yürütülür ve kadınların özgür ve eşit koşullarda yaşadığı, toplumsal cinsiyet temelli ayrımcılık ve erkek şiddetinden uzakta bir yaşam kurabilmeleri hedeflenir. Erkek şiddetinin, toplumda kadınlarla erkekler arasında var olan eşitsizliklerden kaynaklandığı ve kadın dayanışmasını güçlendirerek eşitsizliklere karşı mücadele etmenin gerekli olduğu düşünülür. Bu amaçla dayanışma merkezi ve sığınakta kadınları güçlendirici sosyal çalışma yapılır. Kadınlarla birebir dayanışma kurmanın yanı sıra şiddetle mücadele etmek ve toplumsal cinsiyet eşitliğini sağlamak için ulusal ve uluslararası sözleşme, kanun ve yönetmeliklerin uygulamaları izlenir, raporlanır ve karar vericilere gerekli politikalara dair öneriler sunulur. Alandaki bilgi ve deneyimi paylaşmak için şiddet alanında çalışan kadın örgütleri, sivil toplum kuruluşları, barolar ve belediyelerle atölyeler yapılır. Ulusal ve uluslararası kadın örgütleri ile dayanışma içinde kampanyalar ve eylemlilikler yoluyla patriyarkaya karşı, kadınların özgür ve bağımsız hayatlar kurabilmeleri için mücadele edilir.'),

            ),
            bottomNavigationBar(context),
          ],
        )
      ),
    );
  }
}