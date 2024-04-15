import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Hodnik1 extends StatelessWidget {
  const Hodnik1({super.key});

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
                onTap: () => Navigator.pushNamed(context, '/hodnik1_1'), 
                title: "Ходник 1",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40)
              ),
            ),
            Hotspot(
              latitude: -5.0,
              longitude: -58,
              width: 300,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pushNamed(context, '/ucilinca_dolu'), 
                title: "Училница",
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
            )
          ],
              child: const Image(
              image: AssetImage('assets/panoramas/glaven_hodnik_1.jpg'),
            ),
          ),
        )
      );
    }
  }
