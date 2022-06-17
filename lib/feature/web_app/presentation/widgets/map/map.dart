import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Maps extends GetResponsiveView {
  Maps({Key? key}) : super(key: key);

  late MapTileLayerController _mapController;

  late MapZoomPanBehavior _zoomPanBehavior;
  @override
  Widget desktop() {
    _mapController = MapTileLayerController();
    _zoomPanBehavior = MapZoomPanBehavior(
      minZoomLevel: 3,
      maxZoomLevel: 10,
      focalLatLng: const MapLatLng(-6.3100893, 106.8681389),
      enableDoubleTapZooming: true,
    );
    return Container(
      child: SfMaps(
        layers: [
          MapTileLayer(
            /// URL to request the tiles from the providers.
            ///
            /// The [urlTemplate] accepts the URL in WMTS format i.e. {z} —
            /// zoom level, {x} and {y} — tile coordinates.
            ///
            /// We will replace the {z}, {x}, {y} internally based on the
            /// current center point and the zoom level.
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            zoomPanBehavior: _zoomPanBehavior,
            controller: _mapController,
            initialMarkersCount: 1,
            tooltipSettings: const MapTooltipSettings(
              color: Colors.transparent,
            ),
            markerTooltipBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Container(
                    width: 150,
                    height: 80,
                    color: Colors.grey,
                    child: Image.asset(
                      'ceoGoads.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 5.0, bottom: 5.0),
                    width: 150,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Gunawan',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "CEO GoAds",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          )
                        ]),
                  ),
                ]),
              );
            },
            markerBuilder: (BuildContext context, int index) {
              final double markerSize = 40;
              return MapMarker(
                latitude: -6.3100893,
                longitude: 106.8681389,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    height: markerSize,
                    width: markerSize,
                    child: FittedBox(
                      child: Icon(Icons.location_on,
                          color: Colors.red, size: markerSize),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  @override
  Widget phone() {
    _mapController = MapTileLayerController();
    _zoomPanBehavior = MapZoomPanBehavior(
      minZoomLevel: 3,
      maxZoomLevel: 10,
      focalLatLng: const MapLatLng(-6.3100893, 106.8681389),
      enableDoubleTapZooming: true,
    );
    return Container(
      height: MediaQuery.of(Get.context!).size.height * 0.6,
      width: MediaQuery.of(Get.context!).size.width,
      child: SfMaps(
        layers: [
          MapTileLayer(
            /// URL to request the tiles from the providers.
            ///
            /// The [urlTemplate] accepts the URL in WMTS format i.e. {z} —
            /// zoom level, {x} and {y} — tile coordinates.
            ///
            /// We will replace the {z}, {x}, {y} internally based on the
            /// current center point and the zoom level.
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            zoomPanBehavior: _zoomPanBehavior,
            controller: _mapController,
            initialMarkersCount: 1,
            tooltipSettings: const MapTooltipSettings(
              color: Colors.transparent,
            ),
            markerTooltipBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Container(
                    width: 150,
                    height: 80,
                    color: Colors.grey,
                    child: Image.asset(
                      'ceoGoads.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 5.0, bottom: 5.0),
                    width: 150,
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Gunawan',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0),
                            child: Text(
                              "CEO GoAds",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          )
                        ]),
                  ),
                ]),
              );
            },
            markerBuilder: (BuildContext context, int index) {
              final double markerSize = 40;
              return MapMarker(
                latitude: -6.3100893,
                longitude: 106.8681389,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {},
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    height: markerSize,
                    width: markerSize,
                    child: FittedBox(
                      child: Icon(Icons.location_on,
                          color: Colors.red, size: markerSize),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
