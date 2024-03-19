import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../config/api_end_points.dart';
import '../../data/models/story.dart';
import '../../exceptions/apis/notfound_exception.dart';
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

  Future<Story> find({required String id}) async {
    var result = await http.get(
      Uri.parse(ApiEndPoint.story + id),
      headers: headers,
    );
    var json = jsonDecode(result.body.toString());
    if (result.statusCode == 404) {
      return throw NotFoundException(message: json['message']);
    }
    if (result.statusCode != 200) {
      return throw UnknownException();
    }
    return Story.fromJson(json['story']);
  }

  Future<bool> create({
    required String description,
    required String imagePath,
  }) async {
    headers['Content-Type'] = 'multipart/form-data';
    print(headers);
    return true;
  }
}
