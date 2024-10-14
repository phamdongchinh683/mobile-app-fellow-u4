import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/views/explore/explore.dart';
import 'package:flutter_mobile_app/views/trip/add_experience.dart';
import 'package:flutter_mobile_app/views/trip/part_trip.dart';
import 'package:flutter_mobile_app/views/trip/search_trip.dart';
import 'package:flutter_mobile_app/views/trip/trip.dart';

class TabViewIntroduce extends StatelessWidget {
  const TabViewIntroduce({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        body: TabBarView(children: <Widget>[
          AddExperience(),
          Trip(),
          PartTrip(),
          SearchTrip(),
          Explore()
        ]),
      ),
    );
  }
}
