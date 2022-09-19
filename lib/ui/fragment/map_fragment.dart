import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapFragment extends StatefulWidget {
  const MapFragment({Key? key}) : super(key: key);

  @override
  State<MapFragment> createState() => _MapFragmentState();
}

class _MapFragmentState extends State<MapFragment> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(24.1796579263865, 120.64819624500039),
        zoom: 17,
        maxZoom: 18,
        maxBounds: LatLngBounds(
          LatLng(24.183486331484733, 120.64479052362931),
          LatLng(24.176542262280115, 120.65180048891875),
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        PolygonLayer(
          // polygonCulling: false,
          polygons: [
            Polygon(
              borderStrokeWidth: 5.0,
              borderColor: Colors.red,
              points: [
                LatLng(24.181935781273555, 120.64631831586875),
                LatLng(24.178032045116044, 120.64663760603749),
                LatLng(24.17811228298778, 120.65016584055638),
                LatLng(24.181953660024117, 120.65003680612605),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
