import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/hotspot_info_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Hodnik1_1 extends StatelessWidget {
  const Hodnik1_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Ходник 1',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
              latitude: -5.0,
              longitude: -360.0,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/nov_del_dolu'),
                title: "Нов Дел",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              ),
            ),
            Hotspot(
              latitude: 10,
              longitude: -5,
              width: 300,
              height: 100,
              widget: const HotspotInfoButton(
                title: "WC",
              ),
            ),
            Hotspot(
              latitude: -5.0,
              longitude: -455.0,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/hodnik_gore'),
                title: "Горен Спрат",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              )
            ),
            Hotspot(
              latitude: -5.0,
              longitude: 543.0,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pop(context),
                title: "Ходник 1",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              )
            )
          ],
              child: const Image(
                image: AssetImage('assets/panoramas/glaven_hodnik.jpg'),
            ),
          ),
        )
      );
    }
  }
