import 'package:flutter/material.dart';
import 'package:flutter_weather/data/my_location.dart';
import 'package:flutter_weather/data/network.dart';
import 'package:flutter_weather/screens/weather_screen.dart';

const apiKey = 'bfefa601b7da6f8fb2fd48cd76c6696d';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late double lat;
  late double long;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    lat = myLocation.latitude;
    long = myLocation.longitude;

    Network network = Network(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiKey&units=metric',
        'https://api.openweathermap.org/data/2.5/air_pollution?lat=$lat&lon=$long&appid=$apiKey');

    var weatherData = await network.getJsonData();
    print('weatherData : $weatherData');

    var airData = await network.getAirData();
    print('airData : $airData');

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        parseWeatherData: weatherData,
        parseAirPollution: airData,
      );
    }));
  }

  // void fetchData() async {
  //     var myJson = pasingData['weather'][0]['description'];
  //     var windSpeed = pasingData['wind']['speed'];
  //     var id = pasingData['id'];
  //     print(myJson);
  //     print(windSpeed);
  //     print(id);
  //   }else {
  //     print(response.statusCode);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          child: const Text(
            'Get My Loaction',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
