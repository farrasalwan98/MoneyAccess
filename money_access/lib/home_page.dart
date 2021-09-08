import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:money_access/HomePageWidget/akun_widget.dart';
import 'package:money_access/HomePageWidget/menu_home_widget.dart';
import 'package:money_access/HomePageWidget/menu_home_widget2.dart';
import 'package:money_access/HomePageWidget/stack_widget_home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 5;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 4 / 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
            children: [
              Stack(
                children: <Widget>[
                  Positioned(
                    right: -getSmallDiameter(context) / 3,
                    top: -getSmallDiameter(context) / 3,
                    child: Container(
                      width: getSmallDiameter(context),
                      height: getSmallDiameter(context),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xFF1A237E), Color(0xFF5C6BC0)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomRight)),
                    ),
                  ),
                  Positioned(
                    left: -getBigDiameter(context) / 7,
                    top: -getBigDiameter(context) / 2,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(47, 25, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/logo2.png',
                              width: 170,
                              height: 170,
                            ),
                          ]),
                      width: getBigDiameter(context),
                      height: getBigDiameter(context),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xFF1A237E), Color(0xFF5C6BC0)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomRight)),
                    ),
                  ),
                  AkunWidgetHome(),
                  cardberita(),
                  StackWidgetHome(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardberita() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 200),
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                height: 250,
                width: 490,
                color: Colors.white,
              ),
              MenuHomeWidget(),
              MenuHomeWidget2(),
              slider()
            ],
          ),
        ],
      ),
    );
  }

  Widget slider() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 250),
      child: Container(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200,
                width: double.infinity,
                child: CarouselSlider(
                    items: <Widget>[Image.asset("assets/logo2.png")],
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1.0,
                        height: 100,
                        reverse: false,
                        autoPlayInterval: Duration(seconds: 2))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
