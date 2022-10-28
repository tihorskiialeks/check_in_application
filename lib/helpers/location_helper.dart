const GOOGLE_API_KEY =
    'AIzaSyDb7TbxGmb6-Ji0qzT6bmMKbIdBzDHdwM4';

class LocationHelper {
  static String generateLocationPreviewImage(
      {required double latitude, required double longitude,}) {
return 'https://api.mapbox.com/styles/v1/mapbox/streets-v11/static/$longitude,$latitude,12.76,0/300x200?access_token=pk.eyJ1IjoidHlraG9yc2t5aSIsImEiOiJjbDlxcXhubW0xMnMwM3JvNnVxcWN5bzNqIn0.eQvibHauFGIxmMd_hyuRSw';
//return 'https://maps.googleapis.com/maps/api/staticmap?center=&$longitude,$latitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$longitude,$longitude&key=$GOOGLE_API_KEY&signature=YOUR_SIGNATURE';
  }
}
