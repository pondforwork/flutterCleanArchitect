
//นี่คือ Interface
import 'package:flutter_application_chopper/domain/entities/Student.dart';

abstract class StudentRepository{
  Future<List<Student>> getAllStudents();
  Future<Student?> getStudentById(int id);
  Future<void> saveStudent(Student student);
}