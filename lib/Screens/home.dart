import 'dart:collection';
import 'dart:math';

import 'package:easy_delivery/Config/applocalization.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:easy_delivery/Screens/SearchScreens/dropoffsearch.dart';
import 'package:easy_delivery/Screens/SearchScreens/pickupsearch.dart';
import 'package:easy_delivery/Screens/orderdetails.dart';
// import 'package:easy_delivery/Services/googlemap.dart';
import 'package:easy_delivery/Utils/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_delivery/Widgets/HomeWidgets/dialogbox.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:search_map_place/search_map_place.dart';

// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  MapboxMapController mapController;
  // MapController mapcontroller = MapController();

  void _onMapCreated(MapboxMapController controller){
    mapController=controller;
  }

//  final List<Marker> _markers = [];
//  addMarker(coordinate) {
//    int id = Random().nextInt(100);
//    setState(() {
//      _markers
//          .add(Marker(position: coordinate, markerId: MarkerId(id.toString())));
//    });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // mapcontroller.getCurrentLocation();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        key: _scaffoldKey,
        body: Stack(
          children: <Widget>[
            Container(
                child:MapboxMap(
                  accessToken: "sk.eyJ1IjoiZWFzeWRlbGl2ZXJ5IiwiYSI6ImNrZXZwMHJ3NzN2OHQyeXBpeGl5bTluNnQifQ.j_FVbifprMohJH_g0W_-fw",
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(target: LatLng(30.3753, 69.3451),zoom: 3
                  ),
                )
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 950.w,
                height: 500.h,
                margin: EdgeInsets.only(bottom: 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.zero,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.only(
                        topLeft: new Radius.circular(5.0),
                        topRight: new Radius.circular(5.0),
                      )),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('icons/tracking.png'),
                          width: 90.w,
                          height: 90.h,
                        ),
                        title: Text(
                          AppLocalizations.of(context).translate('home_pu_loc'),
                          style: TextStyle(fontSize: FontData.p4),
                        ),
                        // trailing: Icon(Icons.check, color: Colors.green),
                        onTap: () {
                          showSearch(
                              context: context, delegate: SearchPickUp());
                        },
                      ),
                    ),
                    Divider(
                      color: Colors.grey[100],
                      thickness: 1,
                      height: 2.h,
                    ),
                    Card(
                      margin: EdgeInsets.zero,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.only(
                        bottomLeft: new Radius.circular(5.0),
                        bottomRight: new Radius.circular(5.0),
                      )),
                      child: ListTile(
                        leading: Image(
                          image: AssetImage('icons/location.png'),
                          width: 90.w,
                          height: 90.h,
                        ),
                        title: Text(
                          AppLocalizations.of(context).translate('home_do_loc'),
                          style: TextStyle(fontSize: FontData.p4),
                        ),
                        //     trailing: Icon(Icons.check, color: Colors.green),
                        onTap: () {
                          showSearch(
                              context: context, delegate: SearchDropOff());
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30.h),
                        alignment: Alignment.centerRight,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                          color: ColorTheme.c1,
                          child: Text(
                            AppLocalizations.of(context).translate('next_button'),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: FontData.p2,
                            ),
                          ),
                          onPressed: () {
                            Navigate.page(context, OrderDetail());
                          },
                        )),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Container(
                    margin: EdgeInsets.only(top: 60.h, left: 60.w),
                    width: 100.w,
                    height: 100.h,
                    child: RawMaterialButton(
                        child: Icon(
                          Icons.menu,
                          size: 20,
                        ),
                        fillColor: Colors.white,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () {
                          setState(() {
                            HomeDialogBox.show(context);
                          });
                        }))),
            // Align(
            //     alignment: Alignment.topRight,
            //     child: Container(
            //         margin: EdgeInsets.only(top: 60.h, right: 60.w),
            //         width: 100.w,
            //         //height: 200.h,
            //         child: ListView(
            //             children: <Widget>[
            //           RawMaterialButton(
            //               child: Icon(
            //                 Icons.my_location,
            //                 color: Colors.red,
            //                 size: 20,
            //               ),
            //               fillColor: Colors.white,
            //               elevation: 10,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(5)),
            //               onPressed: () {
            //                 // mapcontroller.animateMap();
            //               }),
            //           RawMaterialButton(
            //               child: Icon(
            //                 Icons.layers,
            //                 color: Colors.blue,
            //                 size: 20,
            //               ),
            //               fillColor: Colors.white,
            //               elevation: 10,
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(5)),
            //               onPressed: () {
            //                 // mapcontroller.animateMap();
            //               })
            //         ]))),
          ],
        ),
      ),
    );
  }

  Widget actionButtons() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        color: Colors.white,
        child: IconButton(
            icon: Icon(Icons.gps_fixed), color: Colors.red, onPressed: () {}),
      ),
    );
  }
}

//GoogleMap(
//initialCameraPosition: _initialPosition,
//mapType: MapType.normal,
//markers: _markers.toSet(),
//zoomControlsEnabled: false,
//myLocationButtonEnabled: true,
//compassEnabled: true,
//onMapCreated: (controller) {
//setState(() {
//_controller = controller;
//});
//},
//onTap: (coordinate) {
//_controller.animateCamera(CameraUpdate.newLatLng(coordinate));
//addMarker(coordinate);
//},
//),
