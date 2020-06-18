import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_place.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class ProfilePlacesList extends StatelessWidget {

  Place place = Place(
      name: 'Knuckles Mountains Range',
      description: 'Hiking. Water fall hunting.'' Natural bath',
      uriImage: 'Scenery & Photography',
      likes: 3);
  Place place2 = Place(
      name: 'Mountains',
      description: 'Hiking. Water fall hunting. Natural bath',
      uriImage: 'Scenery & Photography',
      likes: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0,
          bottom: 10.0
      ),
      child: Column(
        children: <Widget>[
          ProfilePlace(place),
          ProfilePlace(place2),
        ],
      ),
    );
  }

}