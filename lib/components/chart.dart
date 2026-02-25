import 'package:intl/intl.dart';
import '../models/transaction.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, this.recentTransaction});

  final List<Transaction>? recentTransaction;

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index));

      double totalSum = 0.0;

      for (var i = 0; i < recentTransaction!.length; i++) {
        bool sameDay = recentTransaction?[i].date.day == weekday.day;
        bool sameMonth = recentTransaction?[i].date.month == weekday.month;
        bool sameYear = recentTransaction?[i].date.year == weekday.year;
      }

      return {'day': DateFormat.E().format(weekday)[0], 'value': '9.99'};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(children: [

        ],
      ),
    );
  }
}
