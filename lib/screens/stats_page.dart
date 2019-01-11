import 'package:flutter/material.dart';
import '../data/data.dart';
import '../theme/theme.dart';
import '../theme/custom_icons.dart';

import '../widgets/text_widgets.dart';
import '../widgets/clipped_avatar.dart';
import '../widgets/painters/line_painter.dart';

List<Tab> tabs = [
  Tab(child: Text('TODAY'),),
  Tab(child: Text('WEEK'),),
  Tab(child: Text('MONTH',)),
];

class StatsPage extends StatefulWidget {
  StatsPageState createState() => StatsPageState();
}

class StatsPageState extends State<StatsPage> with SingleTickerProviderStateMixin {
  TabController controller;
  Size viewportSize;
  // double ratio = 4.88;
  double ratio = 0.2;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    viewportSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(CustomIcon.back, color: Palette.mainGrey,),
          iconSize: 17,
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: <Widget>[

          ClippedAvatar(),

          SizedBox(width: 6,)

        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: EdgeInsets.only(top: 17, bottom: 17, left: 17, right: 17),
              child: Text(
                'Stats',
                style: TextStyle(
                  fontSize: 34,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.bold,
                  color: Palette.mainGrey
                ),),
            ),

            Container(
              width: viewportSize.width*0.8,
              child: Column(
                children: <Widget>[
                  TabBar(
                    indicatorColor: Palette.mainBlue,
                    indicatorSize: TabBarIndicatorSize.label,
                    // labelPadding: EdgeInsets.only(left: 10),
                    controller: controller,
                    tabs: tabs,
                    isScrollable: false,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 26, right: 24),
                    height: 0.5,
                    color: Palette.mainGrey,
                    // width: viewportSize.width*0.8 - 50,
                  )
                ],
              )
            ),

            Container(
              padding: EdgeInsets.only(left: 25, bottom: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: TextWithPrice(
                      text: 'Balance',
                      price: 5.111,
                      color: PriceStateColor.purple,
                    ),
                  ),

                  Row(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(right: 38),
                        child: TextWithPrice(
                          text: 'Income',
                          price: 230,
                          color: PriceStateColor.green,
                        ),
                      ),

                      TextWithPrice(
                        text: 'Expence',
                        price: 200,
                        color: PriceStateColor.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),

          Container(
            // color: Palette.greyLight,
            child: SizedBox.fromSize(
              size: Size(viewportSize.width, viewportSize.width*ratio),
              child: CustomPaint(
                painter: LinePainter(
                  expenses,
                  lineWidth: 5,
                  lineColor1: Palette.mainBlue,
                  lineColor2: Palette.greyLight,
                ),
              ),
            ),
          ),

          ],
        ),
      ),
    );
  }
}