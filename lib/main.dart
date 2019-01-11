import 'package:flutter/material.dart';
import './screens/wallet_page.dart';
import './screens/stats_page.dart';
import './screens/custom.dart';
import './theme/theme.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme,
      home: WalletPage(title: 'Wallet'),
      // home: StatsPage(),
      // home: Custom(),
    );
  }
}


