import 'package:flutter/material.dart';
import 'package:notreprojet/screens/home/localwidget/appbar.dart';
import 'package:notreprojet/screens/home/localwidget/navbar.dart';
import 'package:notreprojet/screens/wallet/localwidget/cryptowallet.dart';

import '../../globals.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
               CryptoWallet(),
               CryptoWallet(),
            ],
          ),
        ),
      ),
    );
  }
}