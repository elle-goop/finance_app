import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../theme/theme.dart';
import '../widgets/transactions_list.dart';
import '../model/card.dart';

class CardsInfo extends StatefulWidget {
  CardsInfo({Key key, this.creditCard});
  final CardItem creditCard;
  CardsInfoState createState() => CardsInfoState(creditCard: creditCard);
}

class CardsInfoState extends State<CardsInfo> {
  CardsInfoState({this.creditCard});
  final CardItem creditCard;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[

           SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Balance',
                            style: TextStyle(
                            color: Palette.mainGrey,
                            fontSize: 19,
                            fontFamily: 'JosefinSans',
                            fontWeight: FontWeight.w200)),
                        ),

                        SizedBox(height: 10,),
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

                  RawMaterialButton(
                    onPressed: (){},
                    child: Icon(Icons.check_circle),
                  ),
                ],),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 12, left: 20, right: 20),
              child: Text(
                '\$5,000',
                // creditCard.balance.toString(),
                style: TextStyle(
                  color: Palette.mainBlue,
                  fontSize: 34,
                  fontFamily: 'Roboto',),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 12, left: 20, right: 20),
              child: Text(
                'Recent Transactions',
                style: TextStyle(
                  color: Palette.mainGrey,
                  fontSize: 19,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.w200),),
            ),

            ///////////////////////////////////////////////
            //////// Transactions STARD
            ///////////////////////////////////////////////
                Expanded(
                  child: TransactionsListScrollable(
                    transactions: creditCard.transactions,),
                ),

            ///////////////////////////////////////////////
            //////// Transactions END
            ///////////////////////////////////////////////
         ],
       ),
    );
  }
}