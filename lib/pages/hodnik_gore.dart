import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/hotspot_info_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Hodnik_Gore extends StatelessWidget {
  const Hodnik_Gore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ListViewTile(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: const Text(
          'Ходник Горе',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: PanoramaViewer(
        hotspots: [
          Hotspot(
              width: 300,
              height: 100,
              latitude: -15.0,
              longitude: 2,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/hodnik1_1'),
                title: "Ходник Долу",
                child: const Icon(Icons.arrow_circle_down_outlined, size: 40),
              )),
          Hotspot(
              width: 300,
              height: 100,
              latitude: 0.0,
              longitude: 87,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/nov_del_gore'),
                title: "Нов Дел Горе",
                child: const Icon(Icons.arrow_circle_right_outlined, size: 40),
              )),
          Hotspot(
              width: 300,
              height: 100,
              longitude: -95,
              widget: HotspotButton(
                  onTap: () => Navigator.pushNamed(context, '/goren_sprat'),
                  title: "Горен Спрат",
                  child: const Icon(Icons.arrow_circle_up_outlined, size: 40))),
          Hotspot(
            width: 300,
            height: 100,
            latitude: 10,
            longitude: 77,
            widget: const HotspotInfoButton(
              title: "WC",
            ),
          )
        ],
        child: const Image(
          image: AssetImage('assets/panoramas/goren_sprat_2.jpg'),
        ),
      ),
    );
  }
}
