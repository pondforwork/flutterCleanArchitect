import 'package:flutter_application_chopper/data/sources/api/student_api.dart';
import 'package:flutter_application_chopper/domain/entities/Student.dart'; // Import your Student entity
import 'package:flutter_application_chopper/domain/repositories/student_repository.dart'; // Import your repository interface

class StudentRepositoryImpl implements StudentRepository {
  final StudentApi studentApiService;

  StudentRepositoryImpl({required this.studentApiService});

  @override
  Future<List<Student>> getAllStudents() async {
    try {
      // Calling the API service to get all students
      final response = await studentApiService.fetchStudents();
      print(response);
      return response;
    } catch (e) {
      // Handle errors (optional)
      throw Exception('Failed to load students');
    }
  }

  @override
  Future<Student?> getStudentById(int id) async {
    try {
      // Calling the API service to get a student by ID
      final response = await studentApiService.fetchStudentById(id);
      return response;
    } catch (e) {
      // Handle errors (optional)
      throw Exception('Failed to load student with ID: $id');
    }
  }

  @override
  Future<void> saveStudent(Student student) async {
    try {
      // Save the student (implement actual API call here if needed)
      // Example: call the API to save the student
      // await apiService.saveStudent(student);
    } catch (e) {
      throw Exception('Failed to save student');
    }
  }
}
