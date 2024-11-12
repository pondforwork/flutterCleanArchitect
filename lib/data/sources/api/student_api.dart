import 'dart:convert';
import 'package:flutter_application_chopper/data/models/Student_model.dart';
import 'package:http/http.dart' as http;

import '../../../config/config.dart';

class StudentApi {
  final AppConfig config;

  StudentApi({required this.config});

  Future<List<StudentModel>> fetchStudents() async {
    final response = await http.get(Uri.parse('${config.baseUrl}/students'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => StudentModel.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load students');
    }
  }

  Future<StudentModel> fetchStudentById(int id) async {
    final response =
        await http.get(Uri.parse('${config.baseUrl}/students/$id'));

    if (response.statusCode == 200) {
      return StudentModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load student');
    }
  }
}
