import 'dart:convert';
import 'package:flutter_application_chopper/data/models/Student_model.dart';
import 'package:http/http.dart' as http;


class StudentApi {
  final String baseUrl;

  // Constructor to initialize baseUrl
  StudentApi({this.baseUrl = 'https://jsonplaceholde  r.typicode.com'});

  Future<List<StudentModel>> fetchStudents() async {
    final response = await http.get(Uri.parse('$baseUrl/students'));

    if (response.statusCode == 200) {
      // Parse the response body and convert it to a list of Student objects
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => StudentModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load students');
    }
  }

  Future<StudentModel> fetchStudentById(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/students/$id'));

    if (response.statusCode == 200) {
      return StudentModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load student');
    }
  }
}
