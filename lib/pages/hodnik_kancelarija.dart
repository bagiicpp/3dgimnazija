import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/hotspot_info_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class HodnikKancelarija extends StatelessWidget {
  const HodnikKancelarija({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Административен Дел',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
                longitude: 5,
                width: 300,
                height: 100,
                widget: HotspotButton(
                  onTap: () =>
                      Navigator.pushNamed(context, '/kancelarija'),
                  title: "Канцеларија",
                  child: const Icon(Icons.arrow_circle_right_outlined, size: 40),
                ),
              ),
              Hotspot(
                longitude: 100,
                latitude: 27,
                width: 300,
                height: 100,
                widget: const HotspotInfoButton(
                  title: "Директор",
                ),
              ),
              Hotspot(
                longitude: 180,
                latitude: 7,
                width: 300,
                height: 100,
                widget: const HotspotInfoButton(
                  title: "Психолог",
                ),
              ),
            ],
            child: const Image(
              image: AssetImage('assets/panoramas/hodnik_kancelarija.jpg'),
            ),
          ),
        ));
  }
}
