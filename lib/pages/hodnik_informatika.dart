import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/hotspot_info_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class HodnikInformatika extends StatelessWidget {
  const HodnikInformatika({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Ходник Информатика',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
              longitude: 44,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/informatika_1'), 
                title: "Информатика 1",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              ),
            ),
            Hotspot(
              longitude: -14,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/informatika_2'), 
                title: "Информатика 2",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              ),
            ),
            Hotspot(
              latitude: -5.0,
              longitude: 542.0,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pop(context),
                title: "Главен Влез",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              )
            ),
            Hotspot(
              latitude: 10,
              longitude: -160,
              width: 300,
              height: 100,
              widget: const HotspotInfoButton(
                title: "Педагог",
              ),
            ),
            Hotspot(
              longitude: 11,
              width: 300,
              height: 100,
              widget: const HotspotInfoButton(
                title: "WC",
              ),
            ),
          ],
              child: const Image(
              image: AssetImage('assets/panoramas/hodnik_informatika.jpg'),
            ),
          ),
        )
      );
    }
  }
