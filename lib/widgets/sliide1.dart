import 'package:flutter/material.dart';

class slide1 extends StatelessWidget {
  slide1({super.key, required this.name, required this.color});

  String color;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
          color: Color(int.parse(color)),
          border: Border.all(color: Color(0xFFF2E8F5)),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Exam 102 - $name',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              '10 Questions   120 min',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFF2E8F5)),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                  child: Text('Attempt now',
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
