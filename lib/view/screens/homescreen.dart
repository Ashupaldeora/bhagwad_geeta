import 'package:bhagwad_geeta/utils/bhagvadhData.dart';
import 'package:bhagwad_geeta/utils/colors.dart';
import 'package:bhagwad_geeta/utils/variables_Lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/widgets.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 455,
                width: 380,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
                  child: Column(
                    children: List.generate(
                        homeIcons.length, (index) => typeContainer(index)),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }

  InkWell typeContainer(int index) {
    return InkWell(
      enableFeedback: true,
      hoverColor: Colors.orange,
      splashColor: Colors.orange,
      onTap: () {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamed('/adhyay');
            break;
          case 1:
            Navigator.of(context).pushNamed('/saar');
            break;
          case 2:
            Navigator.of(context).pushNamed('/mahatmay');
            break;
          case 3:
            Navigator.of(context).pushNamed('/aarti');
            break;
        }
      },
      child: Container(
        margin: (index <= 2)
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
            Image.asset(homeIcons[index]),
            Container(
              height: 80,
              width: 0.5,
              color: dividerColor,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bhagwadGeetaData[index]['dataType'],
                    style: TextStyle(color: Colors.black, fontSize: 32),
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
