import 'package:flutter/material.dart';
import 'package:masakan_sunda/model/tourism_place.dart';
import 'package:masakan_sunda/main_screen.dart';

class DetailScreen extends StatelessWidget {
  var informationTextStyle = TextStyle(
    fontFamily: 'Oxygen',
  );

  final TourismPlace place;

  DetailScreen({@required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(child: Image.asset(place.imageAsset)),
            Stack(
              children: <Widget>[
                SafeArea(
                    child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FaforiteButton extends StatefulWidget {
  @override
  _FaforiteButtonState createState() => _FaforiteButtonState();
}

class _FaforiteButtonState extends State<FaforiteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
