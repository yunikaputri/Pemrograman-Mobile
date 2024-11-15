import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'constants.dart' as k;
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoaded = false;
  late num temp;
  late num press;
  late num hum;
  late num cover;
  late String cityname = '';
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff133E87),
                    Color(0xff608BC1),
                    Color(0xffCBDCEB),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Visibility(
                visible: isLoaded,
                child: Column(
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.09,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Center(
                          child: TextField(
                            onSubmitted: (String s) {
                              setState(() {
                                cityname = s;
                                getCityWeather(s);
                                isLoaded = false;
                                controller.clear();
                              });
                            },
                            controller: controller,
                            cursorColor: Colors.white,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Search City',
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w600,
                              ),
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                size: 25,
                                color: Colors.white.withOpacity(0.7),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.pin_drop,
                            color: Colors.red,
                            size: 40,
                          ),
                          Text(
                            cityname,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.12,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              offset: Offset(1, 2),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/temperature.png'),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Temperature: ${temp.toInt()}°C',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.12,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              offset: Offset(1, 2),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/pressure.png'),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.4,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Pressure: ${press.toInt()} hPa',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.12,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              offset: Offset(1, 2),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/humidity.png'),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Humidity: ${hum.toInt()}%',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.12,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              offset: Offset(1, 2),
                              blurRadius: 3,
                              spreadRadius: 1,
                            ),
                          ]),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('images/couldCover.png'),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cold Cover: ${cover.toInt()}°C',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                replacement: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )));
  }

  getCurrentLocation() async {
    var p = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
    if (p != null) {
      // print('Lat:${p.latitude}, Long:${p.longitude}');
      getCurrentCityWeather(p);
    } else {
      print('Data unavailable');
    }
  }

  getCityWeather(String cityname) async {
    var client = http.Client();
    var uri = '${k.domain}q=$cityname&appid=${k.apiKey}&units=metric';
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodedData = json.decode(data);
      // print(data);
      updateUI(decodedData);
      setState(() {
        isLoaded = true;
      });
    } else {
      print(response.statusCode);
    }
  }

  getCurrentCityWeather(Position position) async {
    var client = http.Client();
    var uri =
        '${k.domain}lat=${position.latitude}&lon=${position.longitude}&appid=${k.apiKey}&units=metric';
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodedData = json.decode(data);
      // print(data);
      updateUI(decodedData);
      setState(() {
        isLoaded = true;
      });
    } else {
      print(response.statusCode);
    }
  }

  updateUI(var decodedData) {
    setState(() {
      if (decodedData == null) {
        temp = 0;
        press = 0;
        hum = 0;
        cover = 0;
        cityname = 'Not Available';
      } else {
        temp = decodedData['main']['temp'];
        press = decodedData['main']['pressure'];
        hum = decodedData['main']['humidity'];
        cover = decodedData['clouds']['all'];
        cityname = decodedData['name'];
      }
      ;
    });
  }

  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
