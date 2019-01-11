import 'package:flutter/material.dart';
import '../theme/theme.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  // TransactionItem({
  //   Key key,
  //   this.logoUrl,
  //   this.amount,
  //   this.title,
  //   this.dateTime}): super(key: key);
  // final String amount;
  // final String title;
  // final String logoUrl;
  // final DateTime dateTime;

  final Transaction item;
  TransactionItem({
    Key key,
    this.item}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 62,
      child: Row(
        children: <Widget>[
          Image.asset(item.logoUrl, height: 90, width: 90,),

          Expanded(
            child: Container(
              constraints: BoxConstraints(
                minHeight: 62,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Palette.greyLight, ))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.title,
                          style:TextStyle(
                            color: Palette.mainGrey,
                            fontSize: 17,
                          )),

                          SizedBox(height: 10,),

                        // Row(
                        //   children: <Widget>[
                        //     Text(DateFormat.jm().format(dateTime)),
                        //     Text(' • '),
                        //     Text(DateFormat("d MMM’yy").format(dateTime)),
                        //   ],
                        // ),

                        RichText(
                          text: TextSpan(
                            text: DateFormat.jm().format(DateTime.parse(item.dateTime)),
                            style: TextStyle(fontSize: 12, color: Palette.grey[700]),
                            children: [
                              TextSpan(text: ' • '),
                              TextSpan(text: DateFormat("d MMM’yy").format(DateTime.parse(item.dateTime)))
                            ]

                          ),
                        ),
                      ],
                    ),
                  ),

                  Text(item.amount,
                  style: TextStyle(
                    color: item.amount[0]=='-' ? Palette.mainRed : Palette.mainGreen,
                    fontSize: 17,
                    fontFamily: 'Roboto'),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


class TransactionsListScrollable extends StatelessWidget {
  TransactionsListScrollable({this.transactions});
  final List<Transaction> transactions;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionItem(item: transactions[index],);
      },
    );
  }
}