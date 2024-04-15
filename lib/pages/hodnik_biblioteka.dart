import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class HodnikBiblioteka extends StatelessWidget {
  const HodnikBiblioteka({super.key});

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
            latitude: 0.0,
            longitude: 26,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/hemija'),
              title: "Хемија",
              child: const Icon(Icons.arrow_circle_right_outlined, size: 40),
            )
          ),
          Hotspot(
            width: 300,
            height: 100,
            latitude: 0.0,
            longitude: -11,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/likovno'),
              title: "Ликовно",
              child: const Icon(Icons.arrow_circle_left_outlined, size: 40),
            )
          ), 
          Hotspot(
            width: 300,
            height: 100,
            longitude: -164,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/biologija'),
              title: "Биологија",
              child: const Icon(Icons.arrow_circle_right_outlined, size: 40)
            )
          ),
          Hotspot(
            width: 300,
            height: 100,
            longitude: -187,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/biblioteka'),
              title: "Библиотека",
              child: const Icon(Icons.arrow_circle_left_outlined, size: 40)
            )
          ),
          Hotspot(
            width: 300,
            height: 100,
            latitude: -5,
            longitude: -178,
            widget: HotspotButton(
              onTap: () => Navigator.pop(context),
              title: "Главен Влез",
              child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
            )
          ),
          Hotspot(
            width: 300,
            height: 100,
            widget: HotspotButton(
              onTap: () => Navigator.pushNamed(context, '/hodnik_igraliste'),
              title: "Ходник 2",
              child: const Icon(Icons.arrow_circle_up_outlined, size: 40),
            )
          )
        ],
        child: const Image(image: AssetImage('assets/panoramas/hodnik_sala.jpg'))
      )
    );
  }
}