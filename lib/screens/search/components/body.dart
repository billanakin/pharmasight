import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:greenit_app/components/fields/search_bar.dart';
import 'package:greenit_app/screens/home/components/body.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(10.308878513658154, 123.89138682763317);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  bool isLoaded = true; // Debug Only: set to true
  String? output;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: getProportionateScreenWidth(350),
            child: Column(
              children: [
                CustomSearchBar(
                  hintText: 'Search for RHU Medicine and Supplies',
                  searchController: null,
                ),
                VerticalSpacing(of: 10),
                UploadPrescription(),
              ],
            ),
          ),
        ),
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),
          markers: {
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.25407710951034, 123.7998278550254),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.308970250044645, 123.85645857742605),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.290272050705086, 123.97267457853074),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.272756400550008, 123.92870938703349),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.27736355323591, 123.90885506433185),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.254912959623585, 123.81188610891611),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.242618956205648, 123.79746577533182),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.283224423040528, 123.88072452151957),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.31896040808202, 123.90661741199126),
            ),
            const Marker(
              markerId: MarkerId("Pisay"),
              position: LatLng(10.314564616598185, 123.90105748207873),
            ),
          },
        ),
      ],
    );
  }
}
