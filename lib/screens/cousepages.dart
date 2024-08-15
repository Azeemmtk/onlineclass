import 'package:flutter/material.dart';

import '../widgets/container1.dart';

class Cousepages extends StatefulWidget {
  const Cousepages({super.key});

  @override
  State<Cousepages> createState() => _CousepagesState();
}

class _CousepagesState extends State<Cousepages> {
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFA073DA), title: Text('Course name')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // replace with your actual number of days
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xFF553283)
                                  : Color(0xFFF2E8F5),
                              border: Border.all(color: Color(0xFFF2E8F5)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              Text(
                                'DAY',
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black54,
                                ),
                              ),
                              Text(
                                '${index + 1}',
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black54,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '0${index + 1}/04', // date format
                                style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/l.png'),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/m.png'),
            ),
            SizedBox(
              height: 5,
            ),
            container1(
              text: '1',
              image1: 'assets/images/i1.png',
              image2: 'assets/images/r1.png',
            ),
            SizedBox(
              height: 5,
            ),
            container1(
              text: '2  ',
              image1: 'assets/images/i2.png',
              image2: 'assets/images/r2.png',
            ),
            SizedBox(
              height: 5,
            ),
            container1(
              text: '3',
              image1: 'assets/images/i3.png',
              image2: 'assets/images/r3.png',
            ),
            SizedBox(
              height: 5,
            ),
            container1(
              text: '4',
              image1: 'assets/images/i4.png',
              image2: 'assets/images/r4.png',
            ),
          ],
        ),
      ),
    );
  }
}
