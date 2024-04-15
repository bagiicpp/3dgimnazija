import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/pages/biblioteka.dart';
import 'package:gimnazija_proektna/pages/biologija.dart';
import 'package:gimnazija_proektna/pages/goren_sprat.dart';
import 'package:gimnazija_proektna/pages/hemija.dart';
import 'package:gimnazija_proektna/pages/hodnik1_1.dart';
import 'package:gimnazija_proektna/pages/hodnik_biblioteka.dart';
import 'package:gimnazija_proektna/pages/hodnik_gore.dart';
import 'package:gimnazija_proektna/pages/hodnik_igraliste.dart';
import 'package:gimnazija_proektna/pages/hodnik_informatika.dart';
import 'package:gimnazija_proektna/pages/hodnik_kancelarija.dart';
import 'package:gimnazija_proektna/pages/informatika_1.dart';
import 'package:gimnazija_proektna/pages/informatika_2.dart';
import 'package:gimnazija_proektna/intro_page.dart';
import 'package:gimnazija_proektna/pages/glaven_vlez.dart';
import 'package:gimnazija_proektna/pages/hodnik1.dart';
import 'package:gimnazija_proektna/pages/kancelarija.dart';
import 'package:gimnazija_proektna/pages/likovno.dart';
import 'package:gimnazija_proektna/pages/muzicko.dart';
import 'package:gimnazija_proektna/pages/nadvoresno_igraliste.dart';
import 'package:gimnazija_proektna/pages/nov_del_dolu.dart';
import 'package:gimnazija_proektna/pages/nov_del_gore.dart';
import 'package:gimnazija_proektna/pages/nov_del_ucilnica.dart';
import 'package:gimnazija_proektna/pages/nov_del_ucilnica_dolu.dart';
import 'package:gimnazija_proektna/pages/sala.dart';
import 'package:gimnazija_proektna/pages/ucilnica_dolu.dart';
import 'package:gimnazija_proektna/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page':(context) => const IntroPage(),
        '/glaven_vlez':(context) => const GlavenVlez(),
        '/hodnik1':(context) => const Hodnik1(),
        '/hodnik1_1':(context) => const Hodnik1_1(),
        '/nov_del_gore':(context) => const NovDelGore(),
        '/nov_del_ucilnica':(context) => const NovDel_Ucilnica(),
        '/goren_sprat':(context) => const GorenSprat(),
        '/informatika_2':(context) => const Informatika_2(),
        '/hodnik_gore':(context) => const Hodnik_Gore(),
        '/hodnik_biblioteka':(context) => const HodnikBiblioteka(),
        '/biblioteka':(context) => const Biblioteka(),
        '/nadvoresno_igraliste':(context) => const NadvoresnoIgraliste(),
        '/hodnik_igraliste':(context) => const HodnikIgraliste(),
        '/sala':(context) => const Sala(),
        '/kancelarija':(context) => const Kancelarija(),
        '/informatika_1':(context) => const Informatika_1(),
        '/nov_del_dolu':(context) => const NovDelDolu(),
        '/nov_del_dolu_ucilnica':(context) => const NovDelUcilnicaDolu(),
        '/hemija':(context) => const Hemija(),
        '/biologija':(context) => const Biologija(),
        '/likovno':(context) => const Likovno(),
        '/muzicko':(context) => const Muzicko(),
        '/hodnik_informatika':(context) => const HodnikInformatika(),
        '/hodnik_kancelarija':(context) => const HodnikKancelarija(),
        '/ucilinca_dolu':(context) => const UcilnicaDolu(),
      }, 
    );
  }
}