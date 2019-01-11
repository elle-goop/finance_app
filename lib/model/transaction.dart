import 'card.dart';

class Transaction {
  final CardItem card;
  final String logoUrl;
  final String title;
  final String dateTime;
  final String amount;

  const Transaction({
    this.card,
    this.logoUrl,
    this.title,
    this.dateTime,
    this.amount});
}