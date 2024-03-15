import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../utils/bhagvadhData.dart';
import '../../utils/colors.dart';
import '../../utils/variables_Lists.dart';
import '../../utils/widgets.dart';

class adhyayscreen extends StatefulWidget {
  const adhyayscreen({super.key});

  @override
  State<adhyayscreen> createState() => _adhyayscreenState();
}

class _adhyayscreenState extends State<adhyayscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDE3B2),
      body: Stack(
        children: [
          bgImage(),
          SingleChildScrollView(
              child: Column(
            children: [
              geetaLogoContainer(),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 30),
                    child: Column(
                      children: List.generate(adhyayIcons.length,
                          (index) => adhyayContainer(index)),
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }

  InkWell adhyayContainer(int index) {
    return InkWell(
      enableFeedback: true,
      hoverColor: Colors.orange,
      splashColor: Colors.orange,
      onTap: () {
        setState(() {
          adhyaynumber = index;
        });
        Navigator.of(context).pushNamed('/shlok');
      },
      child: Container(
        margin: (index <= 16)
            ? EdgeInsets.only(bottom: 10)
            : EdgeInsets.only(top: 0),
        height: 90,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffFEB417),
              Color(0xffFFC241),
            ]),
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 3),
                  blurRadius: 5)
            ]),
        child: Row(
          children: [
            Image.asset(
              adhyayIcons[index],
              height: (index == 4 || index == 10 || index == 16) ? 83 : 80,
            ),
            Container(
              height: 80,
              width: 0.5,
              color: dividerColor,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        bhagwadGeetaData[0]['chapters'][index]
                            ['adhyayPosition'],
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        bhagwadGeetaData[0]['chapters'][index]['name'],
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
