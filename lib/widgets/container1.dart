import 'package:cource/screens/session.dart';
import 'package:flutter/material.dart';

class container1 extends StatelessWidget {
  container1({
    super.key,
    required this.text,
    required this.image1,
    required this.image2,
  });

  String image1;
  String image2;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Session(
                image: image1,
              ),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xFFFCFCFC),
              border: Border.all(color: Color(0xFFF2E8F5)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Image.asset(image1),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Day 3 - Lesson $text',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'All about did',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(image2),
            ],
          ),
        ),
      ),
    );
  }
}
