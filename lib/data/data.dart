import '../model/transaction.dart';
import '../model/customer.dart';
import '../model/card.dart';

const List<double> expenses =
  [10.0, 80.0, 100.5, 99.9, 60, 100, 15.5, 11.0, 20.5, 55.5, 67.8];

// const Map<int,double> expensesByDays =
//   {20: 10.0, 21: 80.0, 21: 100.5, 99.9, 60, 100, 15.5, 11.0, 20.5, 55.5, 67.8};

const Customer johnSeed = Customer(name: 'John Seed', cards: [],
  balance: 5.111, income: 230, expense: 200);

CardItem johnsCardVisa = CardItem(cardHolder: johnSeed, lastFourDigits: '1234',
expireDate: '2019-10-06 00:00:00.000', balance: 100.0, income: 21.0, expense: 78.0,
transactions: transactions);
CardItem johnsCardMC = CardItem(cardHolder: johnSeed, lastFourDigits: '6590',
expireDate: '2019-10-06 00:00:00.000', balance: 2000.0, income: 1110.0, expense: 890.0,
transactions: transactions);
CardItem johnsCardMC2 = CardItem(cardHolder: johnSeed, lastFourDigits: '0879',
expireDate: '2019-10-06 00:00:00.000', balance: 1650.0, income: 2100.0, expense: 450.0,
transactions: transactions);


// '09:18AM', date: "8 Jun’18"
const List<Transaction> transactions = [
  Transaction(logoUrl: 'assets/icons/pathao_pay.png', title: 'Pathao Pay',
    dateTime: '2018-10-06 00:00:00.000',
    amount: '-\$21'),
  Transaction(logoUrl: 'assets/icons/regent_airways.png', title: 'Regent Airways',
    dateTime: '2018-10-06 00:00:00.000',
    amount: '-\$25'),
  Transaction(logoUrl: 'assets/icons/citi_bank.png', title: 'Citi Bank',
    dateTime: '2018-10-06 00:00:00.000',
    amount: '+\$250'),
  Transaction(logoUrl: 'assets/icons/apple_store.png', title: 'Apple',
    dateTime: '2018-10-06 00:00:00.000',
    amount: '-\$50'),
];

// List<Transaction> transactionsMC = [
//   Transaction(logoUrl: 'assets/icons/apple_store.png', title: 'Apple',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '-\$50', card: masterCard),
//   Transaction(logoUrl: 'assets/icons/regent_airways.png', title: 'Regent Airways',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '-\$25',  card: visaCard),
//   Transaction(logoUrl: 'assets/icons/citi_bank.png', title: 'Citi Bank',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '+\$250', card: masterCard),
//   Transaction(logoUrl: 'assets/icons/pathao_pay.png', title: 'Pathao Pay',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '-\$21', card: visaCard),
// ];

// List<Transaction> transactionsMC2 = [
//   Transaction(logoUrl: 'assets/icons/pathao_pay.png', title: 'Pathao Pay',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '-\$21', card: visaCard),
//   Transaction(logoUrl: 'assets/icons/citi_bank.png', title: 'Citi Bank',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '+\$250', card: masterCard),
//   Transaction(logoUrl: 'assets/icons/apple_store.png', title: 'Apple',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '-\$50', card: masterCard),
//   Transaction(logoUrl: 'assets/icons/regent_airways.png', title: 'Regent Airways',
//     dateTime: DateTime(2018, 09, 2, 09, 18),
//     amount: '-\$25',  card: visaCard),
// ];


// const CardItem visaCard = CardItem(cardHolder: johnSeed, lastFourDigits: '1234', expireDate: '2019-10-06 00:00:00.000',
//     type: CardType.Visa, balance: 100, income: 21,
//     expense: 87, transactions: transactionsVisa);

// CardItem masterCard = CardItem(cardHolder: johnSeed, lastFourDigits: '8789', expireDate: '2020-10-01 00:00:00.000',
//     type: CardType.MasterCard, balance: 100, income: 81,
//     expense: 117, transactions: transactionsMC,);

// CardItem masterCard2 = CardItem(cardHolder: johnSeed, lastFourDigits: '1245', expireDate: '2022-08-06 00:00:00.000',
//     type: CardType.MasterCard, balance: 100, income: 81,
//     expense: 117, transactions: transactionsMC2,);