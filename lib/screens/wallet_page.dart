import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/data.dart';
import '../screens/stats_page.dart';
import '../theme/custom_icons.dart';
import '../theme/theme.dart';
import '../widgets/clipped_avatar.dart';
import '../widgets/credit_card.dart';
import '../widgets/float_pay_btn.dart';
import '../widgets/transactions_list.dart';

class WalletPage extends StatefulWidget {
  final String title;
  WalletPage({this.title});
  WalletPageState createState() => WalletPageState();
}

class WalletPageState extends State<WalletPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController pageController;
  AnimationController controller;
  Size viewportSize;
  int currentCard = 1;
  List cards;

  @override
  void initState() {
    super.initState();
    cards = [johnsCardMC, johnsCardVisa, johnsCardMC2];
    pageController =
        PageController(initialPage: currentCard, viewportFraction: 0.9);
    controller = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    viewportSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Palette.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(CustomIcon.menu, size: 19),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        title: Text(widget.title,
            style: TextStyle(
              fontFamily: 'JosefinSans',
              fontWeight: FontWeight.bold,
              color: Palette.mainGrey,
            )),
        actions: <Widget>[
          ClippedAvatar(),
          SizedBox(
            width: 6,
          )
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          Material(
              color: Palette.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      child: Container(
                    height: viewportSize.width / 1.7,
                    child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          currentCard = index;
                        });
                      },
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return AnimatedBuilder(
                          animation: controller,
                          child: Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: PlasticCard(
                              onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => StatsPage())),
                              card: cards[index],
                              color: index == currentCard
                                  ? Palette.mainPurple
                                  : Palette.mainPurple2T,
                            ),
                          ),
                          builder: (context, child) {
                            double value = 1.0;
                            if (pageController.position.haveDimensions) {
                              value = pageController.page - index;
                              value = (1 - (value.abs() * .30)).clamp(0.0, 1.0);
                            }

                            return Center(
                              child: Container(
                                height: Curves.easeOut.transform(value) *
                                    viewportSize.width /
                                    2.3,
                                width: viewportSize.width,
                                // margin: EdgeInsets.only(left: 10, right: 10),
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Balance',
                                    style: TextStyle(
                                        color: Palette.mainGrey,
                                        fontSize: 19,
                                        fontFamily: 'JosefinSans',
                                        fontWeight: FontWeight.w200)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Till Billing on ${DateFormat("d MMM yyyy").format(DateTime.now())}',
                                  style: TextStyle(
                                      color: Palette.mainGrey,
                                      fontSize: 12,
                                      fontFamily: 'JosefinSans',
                                      fontWeight: FontWeight.w200)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => StatsPage()));
                          },
                          child: Icon(
                            CustomIcon.check_mark,
                            size: 23,
                            color: Palette.mainBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 12, left: 20, right: 20),
                    child: Text(
                      // '\$5,000',
                      '\$${johnsCardVisa.balance}',
                      style: TextStyle(
                        color: Palette.mainBlue,
                        fontSize: 34,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 12, left: 20, right: 20),
                    child: Text(
                      'Recent Transactions',
                      style: TextStyle(
                          color: Palette.mainGrey,
                          fontSize: 19,
                          fontFamily: 'JosefinSans',
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  Expanded(
                    child: TransactionsListScrollable(
                      transactions: johnsCardVisa.transactions,
                    ),
                  ),
                ],
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin:
                  EdgeInsets.only(left: 15.0, right: 15.0, bottom: 14.0), //b34
              child: FloatPaymentBtn(),
            ),
          ),
        ],
      ),
    );
  }
}
