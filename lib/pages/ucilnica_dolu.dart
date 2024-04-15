import 'package:flutter/material.dart';
import 'package:gimnazija_proektna/components/hotspot_button.dart';
import 'package:gimnazija_proektna/components/list_view_tile.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class UcilnicaDolu extends StatelessWidget {
  const UcilnicaDolu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: const ListViewTile(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          centerTitle: true,
          title: const Text(
            'Училница',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: PanoramaViewer(
            hotspots: [
              Hotspot(
              longitude: 225,
              width: 2000,
              height: 100,
              widget: HotspotButton(
                onTap: () => Navigator.pop(context),
                title: "Ходник 1",
                child: const Icon(Icons.arrow_circle_up_outlined, size: 40), 
              )
            ),
            ],
            child: const Image(
              image: AssetImage('assets/panoramas/ucilnica_dolu_star.jpg'),
            ),
          ),
        )
      );
    }
  }
