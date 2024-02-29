// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_app1/page/list_view.dart';
import 'package:flutter_app1/styles/button.dart';

class StudentDetailsForm extends StatefulWidget {
  const StudentDetailsForm({super.key});

  @override
  State<StudentDetailsForm> createState() => _StudentDetailsFormState();
}

class _StudentDetailsFormState extends State<StudentDetailsForm> {
  late String studentName, studentId, studentProgramId;
  late double studentGPA;

  getStudentName(name) {
    studentName = name;
  }

  getStudentId(id) {
    studentId = id;
  }

  getStudentProgramId(programId) {
    studentProgramId = programId;
  }

  getStudentGPA(gpa) {
    studentGPA = double.parse(gpa);
  }

  createData() {
    print("Data created $studentName");
  }

  viewData() {
    print("Data viewed");
  }

  updateData() {
    print("Data updated");
  }

  deleteData() {
    print("Data delete");
  }

  late String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
                fillColor: Colors.teal,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                ),
              ),
              onChanged: (String name) {
                getStudentName(name);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Student Id",
                fillColor: Colors.teal,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                ),
              ),
              onChanged: (String studentId) {
                getStudentId(studentId);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "program Id",
                fillColor: Colors.teal,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                ),
              ),
              onChanged: (String studentProgramId) {
                getStudentProgramId(studentProgramId);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "GPA",
                fillColor: Colors.teal,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue, width: 2.0),
                ),
              ),
              onChanged: (String gpa) {
                getStudentGPA(gpa);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  createData();
                },
                style: greenButton,
                child: const Text("create"),
              ),
              ElevatedButton(
                onPressed: () {
                  viewData();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowList(value: studentName),
                      ));

                  // (context) => ShowList(value: studentName);
                },
                style: blueButton,
                child: const Text("view"),
              ),
              ElevatedButton(
                onPressed: () {
                  updateData();
                },
                style: orageButton,
                child: const Text("update"),
              ),
              ElevatedButton(
                onPressed: () {
                  deleteData();
                },
                style: redButton,
                child: const Text("delete"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
