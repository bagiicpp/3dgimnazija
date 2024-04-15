import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class GorenSprat extends StatelessWidget {
  const GorenSprat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Горен Спрат',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
              latitude: -15.0,
              longitude: -370.0,
              width: 2000,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/glaven_vlez'),
                title: "Главен Влез",
                child: const Icon(Icons.arrow_circle_down_outlined, size: 40), 
              )
            ),
            Hotspot(
              longitude: -327.0,
              width: 2000,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/muzicko'),
                title: "Музичко",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40), 
              )
            ),
            Hotspot(
              latitude: 7.0,
              longitude: -130.0,
              width: 2000,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/hodnik_informatika'),
                title: "Ходник Информатика",
                child: const Icon(Icons.arrow_circle_right_outlined, size: 40), 
              )
            ),
            Hotspot(
              longitude: 1985,
              width: 200,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/hodnik_gore'),
                title: "Ходник Горе",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
                )
            )
          ],
            child: const Image(
              image: AssetImage('assets/panoramas/goren_sprat.jpg'),
            ),
          ),
        )
      );
    }
  }
