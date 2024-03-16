import 'package:bhagwad_geeta/utils/variables_Lists.dart';
import 'package:flutter/material.dart';

import '../../utils/bhagvadhData.dart';
import '../../utils/colors.dart';
import '../../utils/widgets.dart';

class shlokascreen extends StatefulWidget {
  const shlokascreen({super.key});

  @override
  State<shlokascreen> createState() => _shlokascreenState();
}

class _shlokascreenState extends State<shlokascreen> {
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
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Column(
                        children: List.generate(
                            bhagwadGeetaData[0]['chapters'][adhyaynumber]
                                    ['shloks']
                                .length,
                            (index) => shlokaContainer(index))),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  InkWell shlokaContainer(int index) {
    return InkWell(
      enableFeedback: true,
      hoverColor: Colors.orange,
      splashColor: Colors.orange,
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(top: 10),
        margin: EdgeInsets.only(bottom: 10),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (index == 0)
                ? Text(
                    bhagwadGeetaData[0]['chapters'][adhyaynumber]
                        ['adhyayPosition'],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                : Container(),
            SizedBox(
              height: 20,
            ),
            Text(
              bhagwadGeetaData[0]['chapters'][adhyaynumber]['name'],
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              bhagwadGeetaData[0]['chapters'][adhyaynumber]['shloks'][index]
                  ['shlok'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 0.5,
              width: 290,
              color: dividerColor,
            ),
            Text(
              bhagwadGeetaData[0]['chapters'][adhyaynumber]['shloks'][index]
                  ['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff2E2E2E),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "COPY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffFEB417),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " SHARE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffFEB417),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
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
