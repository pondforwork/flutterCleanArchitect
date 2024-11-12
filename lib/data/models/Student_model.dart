import 'package:flutter_application_chopper/domain/entities/Student.dart';

class StudentModel extends Student {
  StudentModel(
      {required super.id,
      required super.name,
      required super.surname,
      required super.studentId});

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        studentId: json['student_id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'student_id': studentId,
    };
  }
}
