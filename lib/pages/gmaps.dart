import 'package:flutter/material.dart';
import 'package:flutterapplavaai/animations/fade.animation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutterapplavaai/navigation/markers.layout.dart';

class GMap extends StatefulWidget {
  GMap({Key key}) : super(key: key);
  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {

  GoogleMapController _controller;
  List<Marker>allMarkers = [];
  PageController _pageController;
  int prevPage;

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: laundryPlaces[_pageController.page.toInt()].locationCoords,
        zoom: 16.5,
        bearing: 45.0,
        tilt: 45.0)));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    laundryPlaces.forEach((element) {
      allMarkers.add(Marker(
          markerId: MarkerId(element.markerName),
          draggable: false,
          infoWindow:
          InfoWindow(title: element.markerName, snippet: element.address),icon: BitmapDescriptor.fromAsset("assets/images/markerlogo.png"),
          position: element.locationCoords));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
    ..addListener(_onScroll);
  }

  void _onScroll(){
    if(_pageController.page.toInt()!= prevPage){
      prevPage= _pageController.page.toInt();
      moveCamera();
    }
  }

  _markersList(index) {
    return FadeAnimation(0.6,AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) *135.0,
            width: Curves.easeInOut.transform(value) *350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () {
            moveCamera();
          },
          child: Stack(children: [
            Center(
                child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    height: 125.0,
                    width: 275.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ]
                      ),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(children: [
                          Container(
                              height: 100.0,
                              width: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0)
                                  ),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          laundryPlaces[index].thumbNail
                                      ),
                                      fit: BoxFit.cover
                                  )
                                )
                              ),
                          SizedBox(width: 5.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  laundryPlaces[index].markerName,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  laundryPlaces[index].address,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  width: 170.0,
                                  child: Text(
                                    laundryPlaces[index].description,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                            ),
                          ),
                        ]
                      )
                    ]
                  )
                )
              )
            )
          ]
        )
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(1.2,Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height -50.0,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(-19.940023, -43.933142),
                    zoom: 12.0
                ),
                markers: Set.from(allMarkers),
                onMapCreated: mapCreated,
              ),
            ),
            Positioned(
              bottom: -20.0,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: laundryPlaces.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _markersList(index);
                },
              ),
            ),
          )
        ],
      )
    ));
  }
}

