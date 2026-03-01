import 'package:intl/intl.dart';
import '../models/transaction.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart(this.recentTransactions, {super.key});

  final List<Transaction> recentTransactions;

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index));

      double totalSum = 0.0;

      for (var i = 0; i < recentTransactions.length; i++) {
        bool sameDay = recentTransactions[i].date.day == weekday.day;
        bool sameMonth = recentTransactions[i].date.month == weekday.month;
        bool sameYear = recentTransactions[i].date.year == weekday.year;

        if (sameDay && sameMonth && sameYear) {
          totalSum += recentTransactions[i].value;
        }
      }

      print(DateFormat.E().format(weekday));
      print(totalSum);
      return {'day': DateFormat.E().format(weekday)[0], 'value': totalSum};
    });
  }

  @override
  Widget build(BuildContext context) {
    groupedTransactions;
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(children: [

        ],
      ),
    );
  }
}
