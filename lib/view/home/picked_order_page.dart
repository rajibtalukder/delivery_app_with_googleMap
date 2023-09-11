import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:klio_delivery/constant/colors.dart';
import 'package:klio_delivery/controller/map_controller.dart';

import '../../constant/value.dart';
import '../../global_widgets/button_widgets.dart';

class PickedOrder extends StatefulWidget {
  PickedOrder({Key? key}) : super(key: key);

  @override
  State<PickedOrder> createState() => _PickedOrderState();
}

class _PickedOrderState extends State<PickedOrder> {
  MapController mapController = Get.put(MapController());
  var _marker;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();

  @override
  void initState() {
    _marker = {
      Marker(
        markerId: MarkerId('1'),
        position: LatLng(mapController.customerLatitude.value,
            mapController.customerLongitude.value),
        infoWindow: InfoWindow(
            title: 'Destination Location',
            snippet: 'This is customer location '),
      ),
    };
    // TODO: implement initState
    super.initState();
  }

  // final _marker = {
  //   // Marker(
  //   //   markerId: MarkerId('1'),
  //   //   position: LatLng(24.886436, 91.880722),
  //   //   infoWindow: InfoWindow(title: 'Destination Location'),
  //   // )
  // };
  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id,
        color: Colors.green,
        points: polylineCoordinates,
      width: 5
    );
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        'AIzaSyBiN747TEpdfi0TeFN47PvEjw9LrrY9d8w',
        PointLatLng(mapController.currentLatitude.value,
            mapController.currentLongitude.value),
        PointLatLng(mapController.customerLatitude.value,
            mapController.customerLongitude.value),
        travelMode: TravelMode.driving);
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition crntLoc = CameraPosition(
      target: LatLng(mapController.currentLatitude.value,
          mapController.currentLongitude.value),
      zoom: 14.4746,
    );
    print(mapController.currentLatitude.value);
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Stack(
        children: [
          GoogleMap(
            polylines: Set<Polyline>.of(polylines.values),
            mapType: MapType.normal,
            myLocationEnabled: true,
            initialCameraPosition: crntLoc,
            markers: _marker,
            onMapCreated: (GoogleMapController controller) {
              Future.delayed(Duration(milliseconds: 2000), () {
                _controller.complete(controller);
                _getPolyline();
              });
            },
          ),
          Positioned(
              child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(10.0.h),
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                        color: secondaryAccentColor,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: const Icon(Icons.arrow_back_ios_new_sharp),
                  )),
            ),
          )),
          Positioned(
            bottom: 20.h,
            left: 30.h,
            child: Card(
              color: primaryBackground,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r)),
              child: SizedBox(
                height: 220.h,
                width: 280.w,
                child: Padding(
                  padding: EdgeInsets.all(20.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r))),
                            child: const Icon(
                              Icons.dinner_dining,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              normalText('PICK-UP ORDER', textSecondary,
                                  fontW: FontWeight.w600),
                              normalText('062 Kuhn Plains Suite 793', black,
                                  fontsize: fontVerySmall,
                                  fontW: FontWeight.w600)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r))),
                            child: const Icon(
                              Icons.home,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              normalText('DELIVER ORDER', textSecondary,
                                  fontW: FontWeight.w600),
                              normalText('922 Wilfredo Tunnel', black,
                                  fontsize: fontVerySmall,
                                  fontW: FontWeight.w600)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 30.h,
                            child: normalButton('DELIVERED', 50,
                                double.infinity, primaryColor, white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
