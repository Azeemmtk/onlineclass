import 'package:cource/screens/cousepages.dart';
import 'package:flutter/material.dart';

import '../widgets/sliide1.dart';

class CourseScreenContent extends StatelessWidget {
  const CourseScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA073DA),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi good morning!',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Jihn',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Image.asset('assets/images/Group 36668.png'),
            SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/Ellipse 29.png')
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFA073DA),
                  border: Border.all(color: Color(0xFFA073DA)),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFF2E8F5),
                        border: Border.all(color: Color(0xFFF2E8F5)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Select course',
                                style: TextStyle(
                                    fontWeight: FontWeight.w100, fontSize: 15),
                              ),
                              Text(
                                'Montessory',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color(0xFFA073DA),
                              border: Border.all(color: Color(0xFFF2E8F5)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Change',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                      'assets/images/Screenshot_2024-08-15_123507-removebg-preview.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                      'assets/images/Screenshot_2024-08-15_123726-removebg-preview.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/3.png'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Course',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('see all')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cousepages(),
                          ));
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/a.png'),
                        Text('KTET')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cousepages(),
                          ));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/b.png')),
                        Text('LP/UP/HST')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cousepages(),
                          ));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/c.png')),
                        Text('SET')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cousepages(),
                          ));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/d.png')),
                        Text('NET')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cousepages(),
                          ));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/e.png')),
                        Text('Montessory')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cousepages(),
                          ));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                            height: 120,
                            width: 120,
                            child: Image.asset('assets/images/f.png')),
                        Text('Crash Cour...')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset('assets/images/Ads.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Latest test series',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  slide1(
                    color: '0xFFAE52B5',
                    name: 'Biology',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  slide1(
                    name: 'Maths',
                    color: '0xFFFD5F3C',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  slide1(
                    color: '0XffBE516A',
                    name: 'physics',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
