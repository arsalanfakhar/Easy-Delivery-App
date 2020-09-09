import 'package:easy_delivery/Config/Configuration.dart';
import 'package:easy_delivery/Constants/colortheme.dart';
import 'package:easy_delivery/Constants/fontdata.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchDropOff extends SearchDelegate<String> {
  final cities=[
    'Karachi',
    'Lahore',
    'Islamabad',
    'Multan',
    'Rawalpindi'
  ];

  final suggestedCities=
  [
    'Multan',
    'Quetta'
  ];


  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query='';
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon:Padding(
            padding:AppConfig.lang =='ar'?EdgeInsets.only(
                top :70.h):EdgeInsets.zero,
            child:AnimatedIcon(
                icon: AnimatedIcons.menu_arrow, progress: transitionAnimation)),
        onPressed: () {
          close(context, null);
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return ListTile(
      title: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestedData=query.isEmpty ? suggestedCities:cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestedData.length,
      itemBuilder: (context,index)=>ListTile(
        leading:Padding(
          padding: EdgeInsets.symmetric(horizontal:15.w,vertical: 15.h),
          child:
          Icon(Icons.access_time),
        ),
        title: Text(suggestedData[index],
        ),
        subtitle: Text('Ameen Square, Main Road, Jeddah',
        ),
        trailing:  Icon(Icons.arrow_forward),
        onTap: ()
        {
          query=suggestedData[index];
          showResults(context);
        },
      ),
    );
  }
}
