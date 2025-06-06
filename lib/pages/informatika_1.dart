import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Informatika_1 extends StatelessWidget {
  const Informatika_1({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Информатика 1',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
              longitude: 23.0,
              width: 2000,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pop(context),
                title: "Ходник Информатика",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40), 
              )
            ),
            ],
            child: const Image(
              image: AssetImage('assets/panoramas/informatika_nova.jpg'),
            ),
          ),
        )
      );
    }
  }
