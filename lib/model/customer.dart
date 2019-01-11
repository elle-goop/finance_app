import 'card.dart';

class Customer {
  final String name;
  final List<CardItem> cards;
  final double balance;
  final double income;
  final double expense;
  const Customer({
    this.name, this.cards: const[],
    this.balance, this.income,
    this.expense });
}