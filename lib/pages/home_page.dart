// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'add_student_page.dart';
import 'list_student_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Flutter Firestore CRUD"),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddStudentPage(),
                    ))
              },
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
              child: const Text(
                "Add",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
      body: const ListStudentPage(),
    );
  }
}
