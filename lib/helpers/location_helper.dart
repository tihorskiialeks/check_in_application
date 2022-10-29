import 'dart:convert';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = 'AIzaSyDb7TbxGmb6-Ji0qzT6bmMKbIdBzDHdwM4';

class LocationHelper {
  static String generateLocationPreviewImage({
    required double latitude,
    required double longitude,
  }) {
    //return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/$longitude,$latitude,12.76,0/300x200?access_token=pk.eyJ1IjoidHlraG9yc2t5aSIsImEiOiJjbDlxcXhubW0xMnMwM3JvNnVxcWN5bzNqIn0.eQvibHauFGIxmMd_hyuRSw';
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlaceAdress(double lat, double lng) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$GOOGLE_API_KEY');
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
