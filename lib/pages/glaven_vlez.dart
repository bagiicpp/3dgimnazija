import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class GlavenVlez extends StatelessWidget {
  const GlavenVlez({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Главен Влез',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
                latitude: 5.0,
                longitude: -370.0,
                width: 2000,
                height: 100,
                widget: HotspotButton(
                  onTap: () => Navigator.pushNamed(context, '/hodnik1'),
                  title: "Ходник 1",
                  child: const Icon(Icons.arrow_circle_left_outlined, size: 40),
                ),
              ),
              Hotspot(
                latitude: 5.0,
                longitude: -320.0,
                width: 300,
                height: 100,
                widget: HotspotButton(
                  onTap: () => Navigator.pushNamed(context, '/goren_sprat'),
                  title: "Горен Спрат",
                  child: const Icon(Icons.arrow_circle_up_outlined, size: 40),
                ),
              ),
              Hotspot(
                latitude: 0.0,
                longitude: -361.0,
                width: 300,
                height: 100,
                widget: HotspotButton(
                  onTap: () =>
                      Navigator.pushNamed(context, '/hodnik_biblioteka'),
                  title: "Ходник 2",
                  child: const Icon(Icons.arrow_circle_up_outlined, size: 40),
                ),
              ),
              Hotspot(
                longitude: 813.0,
                width: 2000,
                height: 100,
                widget: HotspotButton(
                  onTap: () => Navigator.pushNamed(context, '/hodnik_kancelarija'),
                  title: "Административен Дел",
                  child: const Icon(Icons.arrow_circle_up_outlined, size: 40),
                ),
              ),
            ],
            child: const Image(
              image: AssetImage('assets/panoramas/glaven_vlez.jpg'),
            ),
          ),
        ));
  }
}
