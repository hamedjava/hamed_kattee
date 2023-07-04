import 'package:delivery/model/globals/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MyMap extends StatefulWidget {
  final double height, width;
  static const String route = 'on_tap';

  const MyMap({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  MyMapState createState() {
    return MyMapState();
  }
}

class MyMapState extends State<MyMap> {
  static LatLng london = const LatLng(51.5, -0.09);
  static LatLng paris = const LatLng(48.8566, 2.3522);
  static LatLng dublin = const LatLng(53.3498, -6.2603);

  @override
  Widget build(BuildContext context) {
    final markers = <Marker>[
      Marker(
        width: 80,
        height: 80,
        point: london,
        builder: (ctx) => GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
              content: Text('Tapped on blue FlutterLogo Marker'),
            ));
          },
          child: const FlutterLogo(),
        ),
      ),
      Marker(
        width: 80,
        height: 80,
        point: dublin,
        builder: (ctx) => GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
              content: Text('Tapped on green FlutterLogo Marker'),
            ));
          },
          child: const FlutterLogo(
            textColor: Colors.green,
          ),
        ),
      ),
      Marker(
        width: 80,
        height: 80,
        point: paris,
        builder: (ctx) => GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
              content: Text('Tapped on purple FlutterLogo Marker'),
            ));
          },
          child: const FlutterLogo(textColor: Colors.purple),
        ),
      ),
    ];

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: secondColor, width: 0.5))),
      child: Padding(
        padding: const EdgeInsets.only(top: 1, right: 1, left: 1),
        child: Flexible(
          child: FlutterMap(
            options: MapOptions(
              center: const LatLng(29.5926, 52.5836),
              zoom: 10,
              maxZoom: 18,
              minZoom: 3,
            ),
            children: [
              TileLayer(
                backgroundColor: primaryColor,
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              MarkerLayer(markers: markers),
            ],
          ),
        ),
      ),
    );
  }
}
