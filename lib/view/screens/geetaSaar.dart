import 'package:flutter/material.dart';

import '../../utils/bhagvadhData.dart';
import '../../utils/widgets.dart';

class geetasaar extends StatefulWidget {
  const geetasaar({super.key});

  @override
  State<geetasaar> createState() => _geetasaarState();
}

class _geetasaarState extends State<geetasaar> {
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
                            bhagwadGeetaData[1]['chapters'].length,
                            // bhagwadGeetaData[2]['chapters'][0]
                            // ['shloks']
                            //     .length,
                            (index) => saarContainer(index))),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Container saarContainer(int index) {
    return Container(
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
          Text(
            bhagwadGeetaData[1]['chapters'][index]['adhyayPosition'],
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            bhagwadGeetaData[1]['chapters'][index]['name'],
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              bhagwadGeetaData[1]['chapters'][index]['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 10,
            decoration: BoxDecoration(
                color: Color(0xff2E2E2E),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
          )
        ],
      ),
    );
  }
}
