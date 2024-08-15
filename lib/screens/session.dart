import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Session extends StatefulWidget {
  Session({super.key, required this.image});

  final String image;

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  List<String> num = ['2', '3', '4', '5'];
  List<String> image = [
    'assets/images/r1.png',
    'assets/images/rt.png',
    'assets/images/rt.png',
    'assets/images/rt.png',
  ];

  late Future<Map<String, dynamic>> courseData;
  late Future<List<dynamic>> lessonVideos;

  final String authToken =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VyX2lkIjoiMiIsInJvbGVfaWQiOiIyIiwicm9sZV9sYWJlbCI6IlVzZXIiLCJwaG9uZSI6Ijk5NDY4MDExMDAifQ.BcHZkDQ_VPPQ-jnOtS4Tnwx_4GqQ9761q7BUOjPpML8';
  final String baseUrl = 'https://trogon.info/tutorpro/edspark/api/';

  @override
  void initState() {
    super.initState();
    courseData = fetchCourseData();
    lessonVideos = fetchLessonVideos();
  }

  Future<Map<String, dynamic>> fetchCourseData() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/my_course'),
        headers: {'Authorization': 'Bearer $authToken'},
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else if (response.statusCode == 401) {
        throw Exception('Invalid token');
      } else {
        throw Exception('Failed to load course data: ${response.body}');
      }
    } catch (e) {
      // Return empty map or default data in case of an error
      return {};
    }
  }

  Future<List<dynamic>> fetchLessonVideos() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/get_lesson_videos?lesson_id=1'),
        headers: {'Authorization': 'Bearer $authToken'},
      );

      if (response.statusCode == 200) {
        return json.decode(response.body)['videos'];
      } else if (response.statusCode == 401) {
        throw Exception('Invalid token');
      } else {
        throw Exception('Failed to load lesson videos: ${response.body}');
      }
    } catch (e) {
      // Return empty list or default data in case of an error
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder<Map<String, dynamic>>(
              future: courseData,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  final course = snapshot.data ?? {};
                  return Column(
                    children: [
                      course['videoUrl'] != null
                          ? Image.network(course['videoUrl'],
                              errorBuilder: (context, error, stackTrace) =>
                                  Placeholder())
                          : Placeholder(),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course['subjectName'] ?? 'No Subject Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              'Part -01 | 1hr 37m',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            Text(
                              'Topics Covered',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Icon(CupertinoIcons.book,
                                          color: Colors.greenAccent),
                                      SizedBox(width: 5),
                                      Text('White critically')
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 40,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Icon(CupertinoIcons.book,
                                          color: Colors.pinkAccent),
                                      SizedBox(width: 5),
                                      Text('Recognize and reinforce')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Icon(CupertinoIcons.doc_on_doc),
                                    ),
                                    Text('Document')
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Icon(Icons.download),
                                    ),
                                    Text('Download')
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Icon(CupertinoIcons.share),
                                    ),
                                    Text('Share')
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Icon(CupertinoIcons.chat_bubble),
                                    ),
                                    Text('Doubts')
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      FutureBuilder<List<dynamic>>(
                        future: lessonVideos,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          } else {
                            final videos = snapshot.data ?? [];
                            return Container(
                              height: 500,
                              child: ListView.builder(
                                itemCount: videos.length,
                                itemBuilder: (context, index) {
                                  final video = videos[index];
                                  return Column(
                                    children: [
                                      SizedBox(height: 5),
                                      Container(
                                        height: 100,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFCFCFC),
                                            border: Border.all(
                                                color: Color(0xFFF2E8F5)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 5),
                                            video['thumbnail'] != null
                                                ? Image.network(
                                                    video['thumbnail'],
                                                    errorBuilder: (context,
                                                            error,
                                                            stackTrace) =>
                                                        Placeholder())
                                                : Placeholder(),
                                            SizedBox(width: 20),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 20),
                                                Text(
                                                  'Part ${num[index]}',
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                Text(
                                                  'All about did',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Image.asset(image[index]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
