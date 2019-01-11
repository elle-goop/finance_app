import 'customer.dart';
import 'transaction.dart';

enum CardType{
  Maestro,
  MasterCard,
  Visa,
  Unknown
}

class CardItem {
  const CardItem({
    this.cardHolder,
    this.lastFourDigits,
    this.expireDate,
    this.type,
    this.balance,
    this.income,
    this.expense,
    this.transactions: const [],});
  final Customer cardHolder;
  final String lastFourDigits;
  final String expireDate;
  final CardType type;
  final double balance;
  final double income;
  final double expense;
  final List<Transaction> transactions;
}