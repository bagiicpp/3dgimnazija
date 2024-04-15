import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class HodnikIgraliste extends StatelessWidget {
  const HodnikIgraliste({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Ходник 2',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      body: PanoramaViewer(
        hotspots: [
          Hotspot(
            width: 300,
            height: 100,
            longitude: -99,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/nadvoresno_igraliste'),
              title: "Надворешно Игралиште",
              child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
            )
          ),
          Hotspot(
            width: 300,
            height: 100,
            longitude: -5,
            latitude: -2,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/sala'),
              title: "Сала",
              child: const Icon(Icons.arrow_circle_left_outlined, size: 40)
            )
          ),
          Hotspot(
            width: 300,
            height: 100,
            longitude: -180,
            latitude: -5,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/hodnik_biblioteka'),
              title: "Ходник 2",
              child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
            )
          )
        ],
        child: const Image(image: AssetImage('assets/panoramas/hodnik_sala_1.jpg'))
      )
    );
  }
}