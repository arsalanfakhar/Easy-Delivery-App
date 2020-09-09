// Import the Google Maps package
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController {
  GoogleMapController mapController;
  final Geolocator _geolocator = Geolocator();
  MapType type=MapType.normal;
  Position _currentPosition;
  CameraPosition initialLocation=CameraPosition(target: LatLng(0.0, 0.0));

  Future<void> getCurrentLocation() async
  {
    try
    {
      Position position= await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      _currentPosition=position;
    }
    catch(e)
    {
      print(e);
    }
  }
  void animateMap()
  {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            // Will be fetching in the next step
            _currentPosition.latitude,
            _currentPosition.longitude,
          ),
          zoom: 18.0,
        ),
      ),
    );
  }

//      Align(
//        alignment: Alignment.bottomRight,
//        child:
//            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
//          ClipOval(
//            child: Material(
//              color: Colors.orange[100], // button color
//              child: InkWell(
//                splashColor: Colors.orange, // inkwell color
//                child: SizedBox(
//                  width: 56,
//                  height: 56,
//                  child: Icon(Icons.zoom_out),
//                ),
//                onTap: () {
//                  // Zoom In action
//                  mapController.animateCamera(
//                    CameraUpdate.zoomOut(),
//                  );
//                },
//              ),
//            ),
//          ),
//          ClipOval(
//            child: Material(
//              color: Colors.orange[100], // button color
//              child: InkWell(
//                splashColor: Colors.orange, // inkwell color
//                child: SizedBox(
//                  width: 56,
//                  height: 56,
//                  child: Icon(Icons.zoom_in),
//                ),
//                onTap: () {
//                  /// Zoom In action
//                  mapController.animateCamera(
//                    CameraUpdate.zoomIn(),
//                  );
//
//                  // on button tap
//                },
//              ),
//            ),
//          ),
//          ClipOval(
//            child: Material(
//              color: Colors.orange[100], // button color
//              child: GestureDetector(
//               // splashColor: Colors.orange, // inkwell color
//                child: SizedBox(
//                  width: 56,
//                  height: 56,
//                  child: Icon(Icons.my_location),
//                ),
//                onTap: () {
//                  mapController.animateCamera(
//                    CameraUpdate.newCameraPosition(
//                      CameraPosition(
//                        target: LatLng(
//                          // Will be fetching in the next step
//                          _currentPosition.latitude,
//                          _currentPosition.longitude,
//                        ),
//                        zoom: 18.0,
//                      ),
//                    ),
//                  );
//                },
//              ),
//            ),
//          )
//        ]),
//      ),

LatLng getPosition()
{
  return LatLng(_currentPosition.latitude,_currentPosition.longitude);
}
  }// Method for retrieving the current location


