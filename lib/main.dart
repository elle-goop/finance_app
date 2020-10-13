import 'package:flutter/material.dart';

import './screens/wallet_page.dart';
import './theme/theme.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme,
        home: WalletPage(title: 'Wallet'),
      );
}
