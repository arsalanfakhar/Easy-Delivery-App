import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OrderHistory extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OrderHistoryState();
  }
}

class OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: ColorTheme.appbarcolor,
            title: Text(
              'Order History',
              style: TextStyle(
                  fontSize: FontData.appbartitlesize, color: Colors.grey[700]),
            ),
          ),
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                    margin: EdgeInsets.only(left:30.w,right:30.w,bottom: 10.h,top: 10.h),
                    elevation: 4,
                    shadowColor: Colors.grey[300],
                    child: ListTile(
                      onTap: ()
                      {

                      },
                      leading: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            MdiIcons.shopping,
                            color: Colors.blue,
                            size: 30,
                          )),
                      title: Text(
                        'Order: #1632',
                        style: TextStyle(
                            color: Colors.grey, fontSize: FontData.p4),
                      ),
                      subtitle: Text(
                          '10x Blue T-shirt - Full Sleves - Size: 30 - V-neck',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          style: TextStyle(fontSize: FontData.p5)),
                      trailing:Container(
                       // alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top:30.h),
                height: 200.h,
                width: 150.w,
                child:ListView(

                          children: <Widget>[
                            Text('Rs 100',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: FontData.p4)),
                            SizedBox(height: 10.h),
                            Text('Delivered',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: ColorTheme.c1,
                                    fontSize: FontData.p5,
                                    fontWeight: FontWeight.bold)),
                          ])),
                    ));
              })),
    );
  }
}

//Card(
//margin: EdgeInsets.all(10),
//elevation: 4,
//shadowColor: Colors.grey[300],
//child: Container(
//padding: EdgeInsets.all(20),
//child: Row(
//children: [
//Icon(
//MdiIcons.shopping,
//color: Colors.blue,
//size: 30,
//),
//Expanded(
//flex: 4,
//child: Padding(
//padding: EdgeInsets.only(left: 35.w),
//child: Column(
//mainAxisAlignment:
//MainAxisAlignment.start,
//crossAxisAlignment:
//CrossAxisAlignment.start,
//children: <Widget>[
//Text(
//'Order: #1632',
//style: TextStyle(
//color: Colors.grey,
//fontSize: FontData.p5),
//),
//SizedBox(height: 20.h),
//Text(
//'10x Blue T-shirt - Full Sleves - Size: 30 - V-neck',
//overflow:
//TextOverflow.ellipsis,
//softWrap: false,
//style: TextStyle(
//fontSize: FontData.p5)),
//]))),
//Expanded(
//flex: 1,
//child: Column(
//mainAxisAlignment:
//MainAxisAlignment.start,
//crossAxisAlignment:
//CrossAxisAlignment.end,
//children: <Widget>[
//Text('Rs 100',
//style: TextStyle(
//fontSize: FontData.p5)),
//SizedBox(height: 20.h),
//Text('Delivered',
//style: TextStyle(
//color: ColorTheme.c1,
//fontSize: FontData.p5,
//fontWeight: FontWeight.bold)),
//]))
//],
//))));
