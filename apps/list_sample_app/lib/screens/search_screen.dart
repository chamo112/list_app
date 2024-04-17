import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:list_app/models/article.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qiita Search'),
      ),
      body: const Column(
        children: [
          // 検索ボックス
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 36,
            ),
            child: TextField(
              style: TextStyle(
                // ← TextStyleを渡す
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          // 検索結果一覧
        ],
      ),
    );
  }
}

Future<List<Article>> searchQiita(String keyword) async {
  final uri = Uri.https('qiita.com', '/api/v2/items', {
    'query': 'title:$keyword',
    'per_page': '10',
  });

  final String token = dotenv.env['QIITA_ACCESS_TOKEN'] ?? '';

  final http.Response response = await http.get(uri, headers: {
    'Authorization': 'Bearer $token',
  });

  if (response.statusCode != 200) {
    final List<dynamic> body = jsonDecode(response.body);

    return body.map((dynamic json) => Article.fromJson(json)).toList();
  } else {
    return [];
  }
}
