import 'package:flutter/material.dart';
import 'styles.dart';
import './models/location.dart';
import './mocks/mock_location.dart';
class LocationDetail extends StatelessWidget {
  final int index;

  
  LocationDetail(this.index);

  @override
  Widget build(BuildContext context) {
    var location = MockLocation.fetch(index);
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name,
        style: Styles.navBarStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderFacts(location),
      ),
    );
  }

  List<Widget> _renderFacts(Location locations) {
    var result = List<Widget>();
    result.add(_bannerImage(locations.url, 170.0));
    for (var location in locations.facts) {
      result.add(_sectionTitle(location.title));
      result.add(_sectionText(location.text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(title,
      textAlign: TextAlign.left,
      style: Styles.headerLarge,
    ));
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child:Text(text,
      style: Styles.textDefault,));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
