import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String getAPIUrl = "https://api-football-v1.p.rapidapi.com/";
  var headers = {
    'x-rapidapi-key': '367430e89cmsh222b9aabca16a79p1c4956jsn7a771ecb5918',
    'x-rapidapi-host': 'api-football-v1.p.rapidapi.com'
  };

  static Future<List<Post>> getAPI() async {
    http.Response res = await http.get(
      Uri.parse("https://api-football-v1.p.rapidapi.com/"),
      headers: {
        'x-rapidapi-key': '367430e89cmsh222b9aabca16a79p1c4956jsn7a771ecb5918',
        'x-rapidapi-host': 'api-football-v1.p.rapidapi.com',
      },
    );

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw "Can't get posts";
    }
  }
}

class Post {
  final String name;
  final String nation;
  final String club;
  final String pictureUrl;
  final int goal;

  Post({
    required this.name,
    required this.nation,
    required this.club,
    required this.pictureUrl,
    required this.goal,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      name: json['response.player.name'],
      nation: json['response.player.nationality'],
      club: json['response.statistics.team.name'],
      pictureUrl: json['response.player.photo'],
      goal: json['response.statistics.goals.total'],
    );
  }
}
