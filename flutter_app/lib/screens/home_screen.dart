import 'package:flutter/material.dart';
import 'tax_debt_screen.dart';
import 'payment_stop_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('신용상담')),
      body: ListView(
        children: [
          ListTile(
            title: Text('조세 체납, 건강보험료 상담'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TaxDebtScreen()),
            ),
          ),
          ListTile(
            title: Text('지급정지와 재산명시'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PaymentStopScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
