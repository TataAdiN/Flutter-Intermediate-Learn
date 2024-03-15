import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../config/api_end_points.dart';
import '../../../data/models/story.dart';
import '../../exceptions/apis/unknown_exception.dart';

class StoriesApi {
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': '',
  };

  StoriesApi({required String token}) {
    headers['Authorization'] = 'Bearer $token';
  }

  Future<List<Story>> all() async {
    var result = await http.get(
      Uri.parse(ApiEndPoint.stories),
      headers: headers,
    );
    if (result.statusCode != 200) {
      return throw UnknownException();
    }
    List<Story> stories = [];
    var json = jsonDecode(result.body.toString());
    List<dynamic> storiesJson = (json as Map<String, dynamic>)['listStory'];
    if (storiesJson.isNotEmpty) {
      for (var storyJson in storiesJson) {
        Story story = Story.fromJson(storyJson);
        stories.add(story);
      }
    }
    return stories;
  }
}
