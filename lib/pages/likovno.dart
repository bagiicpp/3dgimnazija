import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Likovno extends StatelessWidget {
  const Likovno({super.key});

 @override
  Widget build(BuildContext context) {
    return  Scaffold(
     endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Ликовно',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      body: PanoramaViewer(
        hotspots: [
          Hotspot(
            width: 300,
            height: 100,
            longitude: -90.5,
            widget: HotspotButton(
              onTap: () => Navigator.pop(context),
              title: "Ходник 2",
              child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
            )
          )
        ],
        child: const Image(image: AssetImage('assets/panoramas/likovno.jpg'))
      )
    );
  }
}